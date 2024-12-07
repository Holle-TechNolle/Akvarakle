import graphviz
import os

def generate_diagrams(dot_file_path, output_dir):
    """
    Generates SVG and PNG diagrams from a .dot file.
    Args:
        dot_file_path (str): Path to the .dot file.
        output_dir (str): Directory where the diagrams will be saved.
    """
    if not os.path.exists(dot_file_path):
        print(f"Error: File '{dot_file_path}' not found.")
        return

    if not os.path.exists(output_dir):
        os.makedirs(output_dir)

    # Load .dot file
    with open(dot_file_path, 'r') as file:
        dot_content = file.read()

    # Create Graphviz object
    graph = graphviz.Source(dot_content)

    # Generate SVG
    svg_output = os.path.join(output_dir, "diagram.svg")
    graph.format = 'svg'
    graph.render(svg_output, cleanup=True)
    print(f"SVG generated: {svg_output}")

    # Generate PNG
    png_output = os.path.join(output_dir, "diagram.png")
    graph.format = 'png'
    graph.render(png_output, cleanup=True)
    print(f"PNG generated: {png_output}")


# Usage example
if __name__ == "__main__":
    dot_file = r"V:Updated_Complete_ER_Diagram.dot"  # Path to your .dot file
    output_directory = "./output/diagrams"
    generate_diagrams(dot_file, output_directory)
