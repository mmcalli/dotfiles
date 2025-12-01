#!/usr/bin/env bash

# Install and configure Claude Code. Depends on installations done as part of brew.sh
#
# Registry provided by EG DevEx MCP - https://devex-mcp-registry.eg-internal.ghpages.expedia.biz/docs/search/
# AWS MCP Servers - https://github.com/awslabs/mcp

npm install -g @anthropic-ai/claude-code

# MCP remote server installations
claude mcp add --transport http context7 https://mcp.context7.com/mcp