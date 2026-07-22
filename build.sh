#!/usr/bin/env bash
set -euo pipefail

project_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
version="$(sed -n 's:.*<version>\([^<]*\)</version>.*:\1:p' "$project_dir/resources/META-INF/plugin.xml")"
jar_file="$project_dir/build/github-unified-ui-theme.jar"
archive_file="$project_dir/build/github-unified-idea-theme-v${version}.zip"
package_dir="$project_dir/dist/github-unified-ui-theme"

mkdir -p "$project_dir/build" "$package_dir/lib"
rm -f "$jar_file" "$archive_file" "$package_dir/lib/github-unified-ui-theme.jar"

(
  cd "$project_dir/resources"
  jar cf "$jar_file" .
)

cp "$jar_file" "$package_dir/lib/github-unified-ui-theme.jar"

(
  cd "$project_dir/dist"
  zip -qr "$archive_file" github-unified-ui-theme
)

echo "$archive_file"

