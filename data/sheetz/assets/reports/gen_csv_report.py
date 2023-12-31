import os
import csv
from jinja2 import Template
from subprocess import Popen, PIPE

latex_template = r'''
\documentclass{article}
\usepackage{tabularx}
\usepackage{booktabs}

\begin{document}

\section*{Location: {{location}}}

\begin{table}[ht]
    \centering
    \begin{tabularx}{\textwidth}{|X|X|}
        \toprule
        \textbf{Date} & \textbf{Temperature} \\
        \midrule
        {% for row in data %}
        {{ row.date }} & {{ row.temperature }} \\
        {% endfor %}
        \bottomrule
    \end{tabularx}
\end{table}

\end{document}
'''

# Function to generate a LaTeX PDF report for a location
def generate_report(location, data):
    # Load the LaTeX template
    template = Template(latex_template)

    # Render the template with the data
    rendered_template = template.render(location=location, data=data)

    # Create a temporary LaTeX file
    latex_file = 'report.tex'
    with open(latex_file, 'w') as f:
        f.write(rendered_template)

    # Compile the LaTeX file to PDF using pdflatex
    process = Popen(['pdflatex', '-interaction=nonstopmode', latex_file], stdout=PIPE, stderr=PIPE)
    stdout, stderr = process.communicate()

    # Remove the temporary LaTeX file
    os.remove(latex_file)

    # Return the stdout and stderr outputs
    return stdout, stderr

def main():
    # Directory containing the CSV files
    csv_directory = '/home/arx/code/jknoxdev/jpeg-design/data/sheetz/assets'

    # Iterate over the CSV files
    for csv_file in os.listdir(csv_directory):
        if csv_file.endswith('.csv'):
            # Extract the location from the CSV filename
            location = csv_file[:-4]  # Remove the '.csv' extension

            # Read the CSV file
            with open(os.path.join(csv_directory, csv_file), 'r') as f:
                reader = csv.DictReader(f)
                data = list(reader)

            # Generate the LaTeX PDF report
            stdout, stderr = generate_report(location, data)

            # Print the stdout and stderr outputs
            print(f'Report generated for {location}:')
            print('STDOUT:', stdout.decode())
            print('STDERR:', stderr.decode())

if __name__ == '__main__':
    main()
