trigger RestrictDeletion on contact (before delete) {
for (contact c:[SELECT Id FROM contact  where Id IN :Trigger.old]){
Trigger.oldMap.get(c.Id).addError('Cannot delete the Contact');
}
}