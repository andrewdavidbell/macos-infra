# Check the playbook's syntax
ansible-playbook --become --inventory ${INV} --syntax-check site.yml

# Test the playbook
ansible-playbook --become --inventory ${INV} site.yml

# Test the playbook's idempotence
if [[ $? == 0 ]]; then
  local idempotence=$(mktemp)
  ansible-playbook --become --inventory ${INV} site.yml | tee -a ${idempotence}
  grep -q 'changed=0.*failed=0' ${idempotence} \
    && (echo 'Idempotence test: pass' && exit 0) \
    || (echo 'Idempotence test: fail' && exit 1)
fi
