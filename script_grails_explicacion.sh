import me.*;
def upsPullTrkService = ctx.getBean('upsPullTrkService')
def s = Shipment.get(27528954729)
def tn = s.trackingNumber
def trackingData = upsPullTrkService.getTrkEvents([tn])
trackingData.each { td ->
println "------------------------------------------------"
println "${td.sucursal} - ${td.eventDate} - ${td.description}"
}
"Done"

#Este trae com output:


# -------- sucursal, fecha del evento y descripcion del evento.
