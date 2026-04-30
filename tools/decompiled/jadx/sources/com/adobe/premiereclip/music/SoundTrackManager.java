package com.adobe.premiereclip.music;

import android.content.ContentUris;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore;
import android.util.Log;
import com.adobe.decoderfactory.AudioDecoderCache;
import com.adobe.decoderfactory.IAudioDecoder;
import com.adobe.premiereclip.PremiereClipApplication;
import com.adobe.premiereclip.R;
import com.adobe.premiereclip.dcx.DCXUtils;
import com.adobe.premiereclip.project.sequence.AssetReference;
import com.adobe.premiereclip.project.sequence.AudioClip;
import com.adobe.premiereclip.util.Utilities;
import com.google.gdata.data.photos.AlbumData;
import com.google.gdata.data.webmastertools.Keyword;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.UUID;
import org.apache.commons.io.FileUtils;

/* JADX INFO: loaded from: classes2.dex */
public class SoundTrackManager {
    private static String[] supportedExtensions = {"mp3", "ase"};

    public static ArrayList<AudioClip> getClipSoundTracks(Context context) {
        ArrayList<AudioClip> arrayList = new ArrayList<>();
        arrayList.add(makeAudioClipFromClipDefaultMusic(R.raw.aphelion, context.getString(R.string.clip_soundtrack_aphelion), 182833923L));
        arrayList.add(makeAudioClipFromClipDefaultMusic(R.raw.bend, context.getString(R.string.clip_soundtrack_bend), 181394286L));
        arrayList.add(makeAudioClipFromClipDefaultMusic(R.raw.colony, context.getString(R.string.clip_soundtrack_colony), 180883447L));
        arrayList.add(makeAudioClipFromClipDefaultMusic(R.raw.echoes, context.getString(R.string.clip_soundtrack_echoes), 156038095L));
        arrayList.add(makeAudioClipFromClipDefaultMusic(R.raw.garage, context.getString(R.string.clip_soundtrack_garage), 239815692L));
        arrayList.add(makeAudioClipFromClipDefaultMusic(R.raw.hammock, context.getString(R.string.clip_soundtrack_hammock), 212044626L));
        arrayList.add(makeAudioClipFromClipDefaultMusic(R.raw.knockout, context.getString(R.string.clip_soundtrack_knockout), 179025850L));
        arrayList.add(makeAudioClipFromClipDefaultMusic(R.raw.particle, context.getString(R.string.clip_soundtrack_particle), 179304490L));
        arrayList.add(makeAudioClipFromClipDefaultMusic(R.raw.streams, context.getString(R.string.clip_soundtrack_streams), 175264218L));
        arrayList.add(makeAudioClipFromClipDefaultMusic(R.raw.toybox, context.getString(R.string.clip_soundtrack_toybox), 179629569L));
        return arrayList;
    }

    public static ArrayList<AudioClip> getAllSongsinMediaStore(Context context) {
        ArrayList<AudioClip> arrayList = new ArrayList<>();
        Cursor cursorQuery = context.getContentResolver().query(MediaStore.Audio.Media.EXTERNAL_CONTENT_URI, new String[]{"_id", "title", "duration", "_data"}, "(is_music!=0) AND ( " + Utilities.getQueryForSelectingExtensions(supportedExtensions.length) + " )", Utilities.getRegexFromExtensions(supportedExtensions), "title ASC");
        if (cursorQuery != null) {
            cursorQuery.moveToFirst();
            do {
                if (cursorQuery.getCount() > 0) {
                    arrayList.add(makeAudioClipFromDeviceMusic(cursorQuery));
                }
            } while (cursorQuery.moveToNext());
            cursorQuery.close();
        }
        return arrayList;
    }

    public static ArrayList<SongCollection> getAllArtistsinMediaStore(Context context) {
        ArrayList<SongCollection> arrayList = new ArrayList<>();
        Cursor cursorQuery = context.getContentResolver().query(MediaStore.Audio.Artists.EXTERNAL_CONTENT_URI, new String[]{"_id", "artist", "number_of_tracks"}, null, null, "artist ASC");
        if (cursorQuery != null) {
            cursorQuery.moveToFirst();
            do {
                if (cursorQuery.getCount() > 0) {
                    Log.d("SoundTrackMgr", "got artist name " + cursorQuery.getString(1));
                    Log.d("SoundTrackMgr", "got no of songs " + cursorQuery.getString(2));
                    SongCollection songCollection = new SongCollection(cursorQuery.getString(0), cursorQuery.getString(1), cursorQuery.getString(2));
                    songCollection.setSongCount(String.valueOf(getSongsinMediaStoreforArtist(context, songCollection.getCollectionId()).size()));
                    arrayList.add(songCollection);
                }
            } while (cursorQuery.moveToNext());
            cursorQuery.close();
        }
        return arrayList;
    }

    public static ArrayList<SongCollection> getAllAlbumsinMediaStore(Context context) {
        ArrayList<SongCollection> arrayList = new ArrayList<>();
        Cursor cursorQuery = context.getContentResolver().query(MediaStore.Audio.Albums.EXTERNAL_CONTENT_URI, new String[]{"_id", AlbumData.KIND, "numsongs"}, null, null, "album ASC");
        if (cursorQuery != null) {
            cursorQuery.moveToFirst();
            do {
                if (cursorQuery.getCount() > 0) {
                    Log.d("SoundTrackMgr", "got album name " + cursorQuery.getString(0));
                    Log.d("SoundTrackMgr", "got no of songs " + cursorQuery.getString(1));
                    SongCollection songCollection = new SongCollection(cursorQuery.getString(0), cursorQuery.getString(1), cursorQuery.getString(2));
                    songCollection.setSongCount(String.valueOf(getSongsinMediaStoreforAlbum(context, songCollection.getCollectionId()).size()));
                    arrayList.add(songCollection);
                }
            } while (cursorQuery.moveToNext());
            cursorQuery.close();
        }
        return arrayList;
    }

    public static ArrayList<SongCollection> getAllPlaylistsinMediaStore(Context context) {
        ArrayList<SongCollection> arrayList = new ArrayList<>();
        Cursor cursorQuery = context.getContentResolver().query(MediaStore.Audio.Playlists.EXTERNAL_CONTENT_URI, new String[]{"_id", "name"}, null, null, "name ASC");
        if (cursorQuery != null) {
            cursorQuery.moveToFirst();
            do {
                if (cursorQuery.getCount() > 0) {
                    Log.d("SoundTrackMgr", "got playlist name " + cursorQuery.getString(0));
                    Log.d("SoundTrackMgr", "got no of songs " + cursorQuery.getString(1));
                    SongCollection songCollection = new SongCollection(cursorQuery.getString(0), cursorQuery.getString(1), "0");
                    songCollection.setSongCount(String.valueOf(getSongsinMediaStoreforPlaylist(context, songCollection.getCollectionId()).size()));
                    arrayList.add(songCollection);
                }
            } while (cursorQuery.moveToNext());
            cursorQuery.close();
        }
        return arrayList;
    }

    public static ArrayList<AudioClip> getSongsinMediaStoreforPlaylist(Context context, String str) {
        Long durationFromDecoder;
        Long l;
        ArrayList<AudioClip> arrayList = new ArrayList<>();
        Cursor cursorQuery = context.getContentResolver().query(MediaStore.Audio.Playlists.Members.getContentUri(Keyword.Source.EXTERNAL, Long.valueOf(str).longValue()), new String[]{"_id", "title", "duration", "_data"}, "(playlist_id='" + str + "'AND is_music!=0) AND ( " + Utilities.getQueryForSelectingExtensions(supportedExtensions.length) + " )", Utilities.getRegexFromExtensions(supportedExtensions), "title ASC");
        if (cursorQuery != null) {
            cursorQuery.moveToFirst();
            do {
                if (cursorQuery.getCount() > 0) {
                    String string = cursorQuery.getString(0);
                    String string2 = cursorQuery.getString(1);
                    String string3 = cursorQuery.getString(3);
                    String string4 = cursorQuery.getString(2);
                    if (string4 == null || string4.isEmpty()) {
                        durationFromDecoder = getDurationFromDecoder(string3);
                    } else {
                        durationFromDecoder = Long.valueOf(Long.valueOf(string4).longValue() * 1000);
                    }
                    boolean z = false;
                    if (durationFromDecoder == null) {
                        z = true;
                        l = 0L;
                    } else {
                        l = durationFromDecoder;
                    }
                    Log.d("SoundTrackMgr", "got song id " + string);
                    Log.d("SoundTrackMgr", "got song name " + string2);
                    Log.d("SoundTrackMgr", "got duration " + l);
                    Log.d("SoundTrackMgr", "got path " + string3);
                    AssetReference assetReference = new AssetReference(UUID.randomUUID().toString(), getUriForPlayListMusic(Long.valueOf(str).longValue(), Long.valueOf(string).longValue()), string3, string3, DCXUtils.getFormattedDate(new Date(new File(string3).lastModified())), "audio");
                    assetReference.setDurationUs(l.longValue());
                    arrayList.add(new AudioClip(string2, assetReference, 0L, l.longValue(), UUID.randomUUID().toString(), z));
                }
            } while (cursorQuery.moveToNext());
            cursorQuery.close();
        }
        return arrayList;
    }

    public static ArrayList<AudioClip> getSongsinMediaStoreforAlbum(Context context, String str) {
        ArrayList<AudioClip> arrayList = new ArrayList<>();
        Cursor cursorQuery = context.getContentResolver().query(MediaStore.Audio.Media.EXTERNAL_CONTENT_URI, new String[]{"_id", "title", "duration", "_data"}, "(album_id='" + str + "'AND is_music!=0) AND ( " + Utilities.getQueryForSelectingExtensions(supportedExtensions.length) + " )", Utilities.getRegexFromExtensions(supportedExtensions), "title ASC");
        if (cursorQuery != null) {
            cursorQuery.moveToFirst();
            do {
                if (cursorQuery.getCount() > 0) {
                    arrayList.add(makeAudioClipFromDeviceMusic(cursorQuery));
                }
            } while (cursorQuery.moveToNext());
            cursorQuery.close();
        }
        return arrayList;
    }

    public static ArrayList<AudioClip> getSongsinMediaStoreforArtist(Context context, String str) {
        ArrayList<AudioClip> arrayList = new ArrayList<>();
        Cursor cursorQuery = context.getContentResolver().query(MediaStore.Audio.Media.EXTERNAL_CONTENT_URI, new String[]{"_id", "title", "duration", "_data"}, "(artist_id='" + str + "'AND is_music!=0) AND ( " + Utilities.getQueryForSelectingExtensions(supportedExtensions.length) + " )", Utilities.getRegexFromExtensions(supportedExtensions), "title ASC");
        if (cursorQuery != null) {
            cursorQuery.moveToFirst();
            do {
                if (cursorQuery.getCount() > 0) {
                    arrayList.add(makeAudioClipFromDeviceMusic(cursorQuery));
                }
            } while (cursorQuery.moveToNext());
            cursorQuery.close();
        }
        return arrayList;
    }

    private static Uri getUriForClipDefaultMusic(int i) {
        return Uri.parse("android.resource://com.adobe.premiereclip/" + i);
    }

    private static Uri getUriForPlayListMusic(long j, long j2) {
        return ContentUris.withAppendedId(MediaStore.Audio.Playlists.Members.getContentUri(Keyword.Source.EXTERNAL, j), j2);
    }

    private static AudioClip makeAudioClipFromDeviceMusic(Cursor cursor) {
        Long durationFromDecoder;
        Long l;
        boolean z = true;
        String string = cursor.getString(0);
        String string2 = cursor.getString(1);
        String string3 = cursor.getString(3);
        String string4 = cursor.getString(2);
        if (string4 == null || string4.isEmpty()) {
            durationFromDecoder = getDurationFromDecoder(string3);
        } else {
            durationFromDecoder = Long.valueOf(Long.valueOf(string4).longValue() * 1000);
        }
        if (durationFromDecoder == null) {
            l = 0L;
        } else {
            z = false;
            l = durationFromDecoder;
        }
        Log.d("SoundTrackMgr", "got song id " + string);
        Log.d("SoundTrackMgr", "got song name " + string2);
        Log.d("SoundTrackMgr", "got duration " + l);
        Log.d("SoundTrackMgr", "got path " + string3);
        AssetReference assetReference = new AssetReference(UUID.randomUUID().toString(), Uri.parse(string3), string3, string3, DCXUtils.getFormattedDate(new Date(new File(string3).lastModified())), "audio");
        assetReference.setDurationUs(l.longValue());
        return new AudioClip(string2, assetReference, 0L, l.longValue(), UUID.randomUUID().toString(), z);
    }

    private static AudioClip makeAudioClipFromClipDefaultMusic(int i, String str, long j) {
        Uri uriForClipDefaultMusic = getUriForClipDefaultMusic(i);
        String str2 = PremiereClipApplication.getContext().getApplicationInfo().dataDir + "/music/" + Character.toLowerCase(str.charAt(0)) + (str.length() > 1 ? str.substring(1) : "") + ".m4a";
        if (!new File(str2).exists()) {
            try {
                FileUtils.copyInputStreamToFile(PremiereClipApplication.getContext().getResources().openRawResource(Integer.valueOf(i).intValue()), new File(str2));
            } catch (IOException e2) {
                e2.printStackTrace();
                return null;
            }
        }
        AssetReference assetReference = new AssetReference(UUID.randomUUID().toString(), uriForClipDefaultMusic, str2, str2, DCXUtils.getFormattedDate(new Date(new File(str2).lastModified())), "audio");
        assetReference.setDurationUs(j);
        return new AudioClip(str, assetReference, 0L, j, UUID.randomUUID().toString(), false);
    }

    private static Long getDurationFromDecoder(String str) {
        IAudioDecoder decoder = AudioDecoderCache.Instance().getDecoder(0, str);
        if (decoder == null) {
            return null;
        }
        return Long.valueOf(decoder.getSourceInfo().getDuration());
    }
}
