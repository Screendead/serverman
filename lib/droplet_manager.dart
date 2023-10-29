import 'package:flutter/material.dart';
import 'package:serverman/helpers/get_droplet_status.dart';
import 'package:serverman/models/droplet.dart';
import 'package:serverman/models/droplet_status.dart';

class DropletManager extends StatelessWidget {
  const DropletManager({super.key, required this.dropletId});

  final String dropletId;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      elevation: 8,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: FutureBuilder<Droplet>(
          future: getDropletStatus(dropletId),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        snapshot.data!.name,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 16),
                      CircleAvatar(
                        backgroundColor:
                            snapshot.data!.status == DropletStatus.active
                                ? Colors.green
                                : Colors.red,
                        radius: 8,
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  buildInfoRow('Memory:', '${snapshot.data!.memory} MB'),
                  buildInfoRow('vCPUs:', '${snapshot.data!.vcpus}'),
                  buildInfoRow('Disk:', '${snapshot.data!.disk} GB'),
                  buildInfoRow('Created At:', snapshot.data!.createdAt),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Expanded(
                        child: Text(
                          'Features:',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            for (final feature in snapshot.data!.features)
                              Text(
                                feature.toString(),
                                style: const TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              );
            } else if (snapshot.hasError) {
              return Text(
                '${snapshot.error}',
                style: const TextStyle(
                  color: Colors.red,
                ),
              );
            }

            return const Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }

  Row buildInfoRow(String key, String value) {
    return Row(
      children: [
        Expanded(
          child: Text(
            key,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
        ),
        Expanded(
          child: Text(
            value,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}
