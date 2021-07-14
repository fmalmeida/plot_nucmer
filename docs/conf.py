# Configuration file for the Sphinx documentation builder.
#
# This file only contains a selection of the most common options. For a full
# list see the documentation:
# https://www.sphinx-doc.org/en/master/usage/configuration.html

# -- Path setup --------------------------------------------------------------

# If extensions (or modules to document with autodoc) are in another directory,
# add these directories to sys.path here. If the directory is relative to the
# documentation root, use os.path.abspath to make it absolute, like shown here.
#
# import os
# import sys
# sys.path.insert(0, os.path.abspath('.'))


# -- Project information -----------------------------------------------------

project = 'Easy (minimal) circos plot.'
copyright = '2021, Felipe, Almeida. Easy_circos: Simple script to create a circos plot between FASTA files'
author = 'Felipe Marques de Almeida'


# -- General configuration ---------------------------------------------------
# The suffix(es) of source filenames.
# You can specify multiple suffix as a list of string:
#
# source_suffix = ['.rst', '.md']
source_suffix = '.rst'

# The master toctree document.
master_doc = 'index'

# Add any Sphinx extension module names here, as strings. They can be
# extensions coming with Sphinx (named 'sphinx.ext.*') or your custom
# ones.
extensions = [
    "sphinx.ext.intersphinx",
    "sphinx.ext.autodoc",
    "sphinx.ext.mathjax",
    "sphinx.ext.viewcode",
    "sphinx_copybutton"
]

# Add any paths that contain templates here, relative to this directory.
templates_path = ['_templates']

# List of patterns, relative to source directory, that match files and
# directories to ignore when looking for source files.
# This pattern also affects html_static_path and html_extra_path.
exclude_patterns = ['_build', 'Thumbs.db', '.DS_Store']


# -- Options for HTML output -------------------------------------------------

# The theme to use for HTML and HTML Help pages.  See the documentation for
# a list of builtin themes.
#

# --- default ---
#import sphinx_rtd_theme
#html_theme = 'sphinx_rtd_theme'

# --- material ---
#import sphinx_materialdesign_theme
#html_theme = "sphinx_materialdesign_theme"

# --- jupyter ---
#import jupyter_sphinx_theme
#html_theme = "jupyter"
#html_sidebars = {'**': ['sidebartoc.html']}
#html_theme_path = jupyter_sphinx_theme.get_html_theme_path()

# --- karma ---
#html_theme = "karma_sphinx_theme"

# --- material ---
html_theme = "sphinx_material"
# Material theme options (see theme.conf for more information)
html_theme_options = {

    # Set the color and the accent color
    # Primary color. Options are red, pink, purple, deep-purple, indigo, blue, light-blue, cyan, teal, green, light-green, lime, yellow, amber, orange, deep-orange, brown, grey, blue-grey, and white.
    'color_primary': 'brown',
    #Accent color. Options are red, pink, purple, deep-purple, indigo, blue, light-blue, cyan, teal, green, light-green, lime, yellow, amber, orange, and deep-orange.
    'color_accent': 'orange',

    # Visible levels of the global TOC; -1 means unlimited
    'globaltoc_depth': 1,
    # If False, expand all TOC entries
    'globaltoc_collapse': True,
    # If True, show hidden TOC entries
    'globaltoc_includehidden': True,

    # logo
    'logo_icon': "book",

    # repo info
    "repo_url": "https://github.com/fmalmeida/easy_circos",
    "repo_name": "easy_circos",
    "repo_type": "github",
}
html_sidebars = {
    "**": ["globaltoc.html", "localtoc.html", "searchbox.html"]
}

# --- custom css ---
html_title       = project
html_static_path = ['_static']
html_css_files   = ['style.css']

# Copy button configuration --------------------------------------------------
# Source: https://sphinx-copybutton.readthedocs.io/en/latest/
#copybutton_prompt_text = "$ "
