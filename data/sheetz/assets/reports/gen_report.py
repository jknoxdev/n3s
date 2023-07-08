import pandas as pd
from pylatex import Document, Section, Tabularx, Command

# Read data from CSV
data = pd.read_csv('data.csv')

# Create a LaTeX document
doc = Document('report')

# Define a command for generating a row in the table
def generate_row(*args):
    return ' & '.join(args) + ' \\\\'

# Iterate over the sections in the data
for section, df in data.groupby('Section'):
    with doc.create(Section(section)):
        # Iterate over the tables in the section
        for table, table_df in df.groupby('Table'):
            with doc.create(Tabularx(' '.join(['X'] * len(table_df.columns)))) as tabular:
                # Add table headers
                tabular.add_hline()
                tabular.add_row([Command('textbf', cell) for cell in table_df.columns])
                tabular.add_hline()

                # Add table rows
                for _, row in table_df.iterrows():
                    tabular.add_row(generate_row(*row.values))
                tabular.add_hline()

# Generate PDF
doc.generate_pdf('report', clean_tex=False)
