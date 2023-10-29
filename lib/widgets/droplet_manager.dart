import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:serverman/models/droplet/droplet.dart';
import 'package:serverman/models/droplet/droplet_backup_window.dart';
import 'package:serverman/models/droplet/droplet_feature.dart';
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
                    buildInfoRow('Locked:', '${droplet.locked}'),
                    buildInfoRow('Status:', '${droplet.status}'),
                    buildInfoRow('Created At:', '${droplet.createdAt}'),
                    buildInfoRow('Size Slug:', droplet.sizeSlug),
                    buildNextBackupWindow(droplet.nextBackupWindow),
                    buildInfoRow('Region:', droplet.region.name),
                    const SizedBox(height: 16),
                    buildFeaturesSection(droplet.features),
                    const SizedBox(height: 16),
                    buildTagsSection(droplet.tags),
                  ],
                ),
        ),
      ),
    );
  }

  Widget buildInfoRow(String key, String value) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 8,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
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
        ),
      ),
    );
  }

  Widget buildNextBackupWindow(DropletBackupWindow? nextBackupWindow) {
    if (nextBackupWindow == null) {
      return const SizedBox.shrink();
    }

    return buildInfoRow(
      'Next Backup Window:',
      '${nextBackupWindow.start} to ${nextBackupWindow.end}',
    );
  }

  Widget buildTagsSection(List<String> tags) {
    if (tags.isEmpty) {
      return const SizedBox.shrink();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Tags',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
        Wrap(
          spacing: 8,
          runSpacing: 0,
          children: <Widget>[
            for (final tag in tags)
              Chip(
                label: Text(tag),
              ),
          ],
        ),
      ],
    );
  }

  Widget buildFeaturesSection(List<DropletFeature> features) {
    if (features.isEmpty) {
      return const SizedBox.shrink();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Features',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
        Wrap(
          spacing: 8,
          runSpacing: 0,
          children: <Widget>[
            for (final feature in features)
              Chip(
                label: Text(feature.toString()),
              ),
          ],
        ),
      ],
    );
  }
}
