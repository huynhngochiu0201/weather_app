import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/apps/utils/const.dart';
import 'package:weather_app/model/weather_model.dart';

class DetailBody extends StatelessWidget {
  const DetailBody({super.key, required this.listData});
  final List<WeatherDetail> listData;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: const EdgeInsets.all(20.0),
        itemBuilder: (context, index) {
          DateTime dateTime = DateTime.parse(listData[index].dt_txt);
          String formatDay = DateFormat('EEEE').format(dateTime);
          String formatTime = DateFormat('HH:MM').format(dateTime);
          return Container(
            decoration: BoxDecoration(
              color: Colors.white30,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Row(children: [
              Expanded(
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            createTemp(listData[index].main.temp, size: 25),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              listData[index].weather.main,
                              style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white70),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          formatDay,
                          style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                        ),
                        const SizedBox(height: 10.0),
                        Text(
                          formatTime,
                          style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    )),
              ),
              SizedBox(
                width: MediaQuery.sizeOf(context).width / 4,
                child: Image.asset(
                  AssetCustom.getLinkImg(listData[index].weather.main),
                  fit: BoxFit.cover,
                ),
              )
            ]),
          );
        },
        separatorBuilder: (context, _) => const SizedBox(
              height: 15.0,
            ),
        itemCount: 20);
  }
}
