package acme.features.any.toolkit;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import acme.entities.toolkit.Toolkit;
import acme.framework.components.models.Model;
import acme.framework.controllers.Request;
import acme.framework.roles.Any;
import acme.framework.services.AbstractListService;

@Service
public class AnyToolkitListService implements AbstractListService<Any, Toolkit> {

	// Internal state ---------------------------------------------------------

	@Autowired
	protected AnyToolkitRepository repository;

	// AbstractListService<Administrator, Item> interface --------------


	@Override
	public boolean authorise(final Request<Toolkit> request) {
		assert request != null;

		return true;
	}
	
	@Override
	public Collection<Toolkit> findMany(final Request<Toolkit> request) {
		assert request != null;

		Collection<Toolkit> result;
		result = this.repository.findAllPublishedToolkits();
		return result;
	}

	@Override
	public void unbind(final Request<Toolkit> request, final Toolkit entity, final Model model) {
		assert request != null;
		assert entity != null;
		assert model != null;

		request.unbind(entity, model, "code", "title", "description", "assemblyNotes", "link");
	}

	

}
