$('#confirmacaoExclusaoModal').on('show.bs.modal',function(event){
	var button = $(event.relatedTarget);
	
	var idCidade = button.data('id');
	var nomeCidade = button.data('nome');
	var modal = $(this);
	var form = modal.find('form');
	
	
	var action = form.data('url-base');
	
	if(!action.endsWith('/')){
		action+='/'; 
	}
	
	form.attr('action',action + idCidade);
	modal.find('.modal-body span').html('Tem certeza que deseja excluir a cidade <strong>' + nomeCidade + '</strong>?');
});