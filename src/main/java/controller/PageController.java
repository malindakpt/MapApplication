package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/")
public class PageController {
	@RequestMapping(method = RequestMethod.GET)
	public String printWelcome(ModelMap model) {
        return "Index";
	}
}

@Controller
@RequestMapping("/ManageLocations")
class ManageLocationsController {
	@RequestMapping(method = RequestMethod.GET)
	public String printWelcome(ModelMap model) {
		return "sub-pages/manage-locations";
	}
}

@Controller
@RequestMapping("/MapViewer")
class MapViewerController {
	@RequestMapping(method = RequestMethod.GET)
	public String printWelcome(ModelMap model) {
		return "sub-pages/map-viewer";
	}
}