- Build workaround container to collect offline deps
  - `podman build -f kai_mcp_solution_server/Containerfile.hermeto-workaround -t quay.io/konflux-ci/hermeto:workaround kai_mcp_solution_server`
- Collect deps
  - `podman run --rm -ti -v $PWD:$PWD:z -w "$PWD" quay.io/konflux-ci/hermeto:workaround --mode permissive fetch-deps --source . '{"packages": [{"type": "pip", "path": "kai_mcp_solution_server"}], "flags": []}'`
- Inject files
  `podman run --rm -ti -v $PWD:$PWD:z -w "$PWD" quay.io/konflux-ci/hermeto:workaround inject-files --for-output-dir /app/hermeto-output hermeto-output`
- Prep container server
  `podman build -f kai_mcp_solution_server/Containerfile.test -t kai_mcp_solution_server:offline-build .`
- Build offline
  `podman run -it --entrypoint /bin/bash --network=none -v $PWD:/app:z kai_mcp_solution_server:offline-build`
  `$install`
-
-
-
-
