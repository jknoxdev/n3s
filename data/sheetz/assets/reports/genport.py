import csv
from pylatex import Document, Section, Tabularx

# Read data from CSV
with open('data.csv', 'r') as file:
    reader = csv.reader(file)
    data = list(reader)

# Create a LaTeX document
doc = Document()

# Define a helper function for generating a row in the table
def generate_row(*args):
    return ' & '.join(args) + ' \\\\'

# Iterate over the sections in the data
sections = {}
for row in data[1:]:
    section = row[0]
    if section not in sections:
        sections[section] = {}
    table = row[1]
    if table not in sections[section]:
        sections[section][table] = []
    sections[section][table].append(row[2:])

# Add sections and tables to the document
for section, tables in sections.items():
    with doc.create(Section(section)):
        for table, rows in tables.items():
            with doc.create(Tabularx('|' + 'X|' * len(rows[0]))):
                table_header = data[0][2:]
                doc.append('\\hline')
                doc.append(generate_row(*table_header))
                doc.append('\\hline')
                for row in rows:
                    doc.append(generate_row(*row))
                doc.append('\\hline')

# Save the document as a PDF
doc.generate_pdf('report', clean_tex=False)
