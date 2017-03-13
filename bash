# stderr redirection
[...] 2>&1

[...] > /dev/null 2>&1
---

# main with logging to a file
function main {
	[...]
}

main | "${TEE}" "${LOG_FILE}"
---

# distro distinguish
DISTRIBUTION=$("${LSB_RELEASE}" -i | "${SED}" -e "s/Distributor ID:\t//g" | "${TR}" '[:upper:]' '[:lower:]')
case "${DISTRIBUTION}" in
    fedora|centos|rhel)
		[...]
		;;
	ubuntu|debian)
		[...]
		;;
	*)
		[...]
		;;
esac
---

# assign value to a variable from command output
AMOUNT=$(echo ${VMS_CENTOS} ${VMS_UBUNTU} | "${WC}" -w)

# regexp
VM_NAME_REGEX='^([[:alpha:]]|[[:alpha:]]+-)+[[:digit:]]+$'
if [[ "${VM_NAME}" =~ ${VM_NAME_REGEX} ]]; then [...]; fi

# printf
printf -v VM_HOSTONLY_IP '%s.%d' "${VM_HOSTONLY_NET}" "${VM_HOSTONLY_NET_OCTET}"

# simple math
VALUE=$((2+2))

# default for variable
VALUE=${VALUE:-test}
