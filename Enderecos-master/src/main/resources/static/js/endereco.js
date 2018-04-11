$('#confirmacaoExclusaoModal').on('show.bs.modal',function(event){
	var button = $(event.relatedTarget);
	
	var idEndereco = button.data('id');
	var nomeEndereco = button.data('nome');
	var modal = $(this);
	var form = modal.find('form');
	
	
	var action = form.data('url-base');
	
	if(!action.endsWith('/')){
		action+='/'; 
	}
	
	form.attr('action',action + idEndereco);
	modal.find('.modal-body span').html('Tem certeza que deseja excluir o endereço <strong>' + nomeEndereco + '</strong>?');
});