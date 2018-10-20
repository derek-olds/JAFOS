#!/bin/bash
# This tool will configure a centos 7 host for an LFS build.
# 
#
# 1. Verify partitions are set up correctly. (This should be done by anaconda.)
# 2. Add tool-chain repos.
# 3. Install tool-chain.
# 4. Create $LFS/tools.
# 5. Add the LFS user.
# 6. Configure LFS user environment.
