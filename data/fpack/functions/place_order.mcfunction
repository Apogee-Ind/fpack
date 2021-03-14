#execute as @p run function fpack:place_order
data modify storage fpack:order_book Destinations append value "@s"
data modify storage fpack:order_book Orders append from block ~2 ~ ~ Text1
execute as @s store result storage fpack:world_day DayCount int 1.0 run time query day
data modify storage fpack:order_book Timestamps append from storage fpack:world_day DayCount
data modify storage fpack:order_book IsActive append value 1