package
{
	import flash.display.MovieClip;
	import flash.text.TextField;
	
	import fr.canope.hds.infosCentre.model.service.GetReservationsService;
	import fr.canope.hds.infosCentre.model.vo.Reservation;
	import fr.canope.hds.infosCentre.view.Salle_mc;
	
	public class InfosCentre extends MovieClip {
		
		
		public var salle_mc:MovieClip;
		
		public function InfosCentre() {
			//result_txt.text = "ok";
			// constructor code
			trace("constructeur validé");
			var reservationsGetter : GetReservationsService = new GetReservationsService();
			reservationsGetter.signalServiceReady.add(reservationsReady);
			
		}
		
		private function reservationsReady(results:Array):void
		{
			// TODO Auto Generated method stub
			trace((results[0] as Reservation).titre);
			trace((results[0] as Reservation).debut);
			trace((results[0] as Reservation).fin);
			
			//monClip.result_txt.text = "test";
			salle_mc.result_txt.text = "test";
		}
	}
}