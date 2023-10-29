import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:serverman/models/minecraft_server/minecraft_server.dart';
import 'package:serverman/models/minecraft_server/minecraft_server_player.dart';
import 'package:serverman/models/minecraft_server/minecraft_server_players.dart';

class MinecraftServerInfo extends StatelessWidget {
  const MinecraftServerInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final MinecraftServer? minecraftServer =
        Provider.of<MinecraftServer?>(context);

    return Card(
      color: minecraftServer == null ? Colors.grey[300] : Colors.white,
      margin: const EdgeInsets.all(16),
      elevation: 8,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: AnimatedSize(
          duration: const Duration(milliseconds: 500),
          child: minecraftServer == null
              ? const SizedBox(height: 200)
              : !minecraftServer.online
                  ? const Text('Minecraft server is offline')
                  : Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Minecraft Server',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(width: 16),
                            CircleAvatar(
                              backgroundColor: minecraftServer.online
                                  ? Colors.green
                                  : Colors.red,
                              radius: 8,
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        buildInfoRow('Host:', minecraftServer.host),
                        buildInfoRow('Port:', '${minecraftServer.port}'),
                        buildInfoRow('Version:',
                            minecraftServer.version?.nameClean ?? '????'),
                        buildInfoRow(
                            'Motd:', minecraftServer.motd?.clean ?? '????'),
                        const SizedBox(height: 16),
                        buildInfoRow('Online:',
                            '${minecraftServer.players?.online ?? '?'}/${minecraftServer.players?.max ?? '?'}'),
                        buildPlayersSection(minecraftServer.players),
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

  Widget buildPlayersSection(MinecraftServerPlayers? players) {
    if (players == null || players.list == null || players.list!.isEmpty) {
      return const SizedBox.shrink();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Players',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),
        for (final MinecraftServerPlayer player in players.list!)
          Text(
            player.nameClean,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
      ],
    );
  }
}
