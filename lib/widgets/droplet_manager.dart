import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:serverman/models/droplet/droplet.dart';
import 'package:serverman/models/droplet/droplet_status.dart';

class DropletManager extends StatelessWidget {
  const DropletManager({super.key});

  @override
  Widget build(BuildContext context) {
    final Droplet? droplet = Provider.of<Droplet?>(context);

    return Card(
      color: droplet == null ? Colors.grey[300] : Colors.white,
      margin: const EdgeInsets.all(16),
      elevation: 8,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: AnimatedSize(
          duration: const Duration(milliseconds: 500),
          child: droplet == null
              ? const SizedBox(height: 200)
              : Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          droplet.name,
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 16),
                        CircleAvatar(
                          backgroundColor:
                              droplet.status == DropletStatus.active
                                  ? Colors.green
                                  : Colors.red,
                          radius: 8,
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    buildInfoRow('Memory:', '${droplet.memory} MB'),
                    buildInfoRow('vCPUs:', '${droplet.vcpus}'),
                    buildInfoRow('Disk:', '${droplet.disk} GB'),
                    buildInfoRow('Created At:', droplet.createdAt),
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
                              for (final feature in droplet.features)
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
                ),
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
