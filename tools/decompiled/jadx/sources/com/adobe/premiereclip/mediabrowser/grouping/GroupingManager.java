package com.adobe.premiereclip.mediabrowser.grouping;

import android.content.Context;
import android.database.Cursor;
import android.os.Environment;
import android.util.Pair;
import com.adobe.premiereclip.mediabrowser.Bucket;
import com.adobe.premiereclip.mediabrowser.GalleryActivity;
import com.adobe.premiereclip.mediabrowser.MediaModel;
import com.adobe.premiereclip.mediabrowser.ThumbnailData;
import com.adobe.premiereclip.mediabrowser.Utils;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes2.dex */
public class GroupingManager {
    private static final double DISTANCE_THRESHOLD = 0.01667d;
    private static final int MAX_NUM_ITEMS = 100;
    private static final int MEAN_VERSION = 2;
    private static final int MIN_NUM_ITEMS = 5;
    private static final long SECOND = 1;
    private TreeMap<String, MediaModel> assetMap;
    private static final long MINUTE = 60;
    private static final long HOUR = 3600;
    private static final long DAY = 86400;
    private static final long WEEK = 604800;
    private static final long MONTH = 2592000;
    private static final long YEAR = 31536000;
    private static final long[] interval_values = {1, MINUTE, HOUR, DAY, WEEK, MONTH, YEAR};
    private static final long[] separation_levels = {WEEK, DAY, 7200};
    private static final long[] levels_vs_intervals = {DAY, 43200};

    public GroupingManager(Context context) {
        this.assetMap = getAssetMap(context);
    }

    public GroupingManager(Context context, long j, long j2) {
        this.assetMap = getAssetMap(context, j, j2);
    }

    private Collection<Bucket> getMediaGroups() {
        Group groupAnalyzeIntoGroups = analyzeIntoGroups();
        HashMap<String, Bucket> map = new HashMap<>();
        getMediaGroupsInternal(groupAnalyzeIntoGroups, map);
        for (Bucket bucket : map.values()) {
            bucket.setId(bucket.getId() + bucket.getItems().get(0).getId());
            setGroupName(bucket);
            Collections.sort(bucket.getThumbnailItems(), new Comparator<ThumbnailData>() { // from class: com.adobe.premiereclip.mediabrowser.grouping.GroupingManager.1
                @Override // java.util.Comparator
                public int compare(ThumbnailData thumbnailData, ThumbnailData thumbnailData2) {
                    return (int) (thumbnailData2.getMediaModel().getDate() - thumbnailData.getMediaModel().getDate());
                }
            });
            Collections.sort(bucket.getItems(), new Comparator<MediaModel>() { // from class: com.adobe.premiereclip.mediabrowser.grouping.GroupingManager.2
                @Override // java.util.Comparator
                public int compare(MediaModel mediaModel, MediaModel mediaModel2) {
                    return (int) (mediaModel2.getDate() - mediaModel.getDate());
                }
            });
        }
        return map.values();
    }

    public ArrayList<Bucket> getSortedMediaGroups() {
        ArrayList<Bucket> arrayList = new ArrayList<>(getMediaGroups());
        Collections.sort(arrayList, new Comparator<Bucket>() { // from class: com.adobe.premiereclip.mediabrowser.grouping.GroupingManager.3
            @Override // java.util.Comparator
            public int compare(Bucket bucket, Bucket bucket2) {
                return (int) (bucket2.getStartTime() - bucket.getStartTime());
            }
        });
        return arrayList;
    }

    private void setGroupName(Bucket bucket) {
        ArrayList<MediaModel> items = bucket.getItems();
        long date = items.get(0).getDate();
        long date2 = items.get(0).getDate();
        Iterator<MediaModel> it = items.iterator();
        long date3 = date;
        while (true) {
            long j = date2;
            if (it.hasNext()) {
                MediaModel next = it.next();
                if (date3 > next.getDate()) {
                    date3 = next.getDate();
                }
                date2 = j < next.getDate() ? next.getDate() : j;
            } else {
                String str = DateFormat.getDateInstance().format(new Date(date3 * 1000));
                DateFormat.getDateInstance().format(new Date(j * 1000));
                bucket.setName(str);
                bucket.setStartTime(date3);
                return;
            }
        }
    }

    private void getMediaGroupsInternal(Group group, HashMap<String, Bucket> map) {
        for (Group group2 : group.getChildren()) {
            MediaModel mediaModel = group2.getMediaModel();
            if (mediaModel != null) {
                Bucket bucket = map.get(group.getId());
                if (bucket == null) {
                    bucket = new Bucket(group.getId(), group.getId());
                    map.put(group.getId(), bucket);
                }
                mediaModel.setParentBucket(bucket);
                bucket.addItem(mediaModel);
            } else {
                getMediaGroupsInternal(group2, map);
            }
        }
    }

    private Group analyzeIntoGroups() {
        ArrayList<Group> assetGroupsCreatedInIntervals = getAssetGroupsCreatedInIntervals(levels_vs_intervals[0], -1L, -1L);
        if (assetGroupsCreatedInIntervals.isEmpty()) {
            return new Group();
        }
        Group group = new Group();
        group.addChildren(groupIntoTimeEvents(assetGroupsCreatedInIntervals, 0));
        predictLocations(group);
        return (Group) analyzeLocation(0, group).second;
    }

    private static ArrayList<MediaModel> getAssetsFromMediaStore(Context context, String str) {
        Cursor cursorInitPhoneMedia = Utils.initPhoneMedia(context);
        ArrayList<MediaModel> arrayList = new ArrayList<>();
        if (cursorInitPhoneMedia != null && cursorInitPhoneMedia.getCount() > 0) {
            cursorInitPhoneMedia.moveToFirst();
            int columnIndex = cursorInitPhoneMedia.getColumnIndex("_id");
            int columnIndex2 = cursorInitPhoneMedia.getColumnIndex("_data");
            int columnIndex3 = cursorInitPhoneMedia.getColumnIndex(GalleryActivity.INTENT_ARG_MEDIA_TYPE);
            int columnIndex4 = cursorInitPhoneMedia.getColumnIndex("duration");
            int columnIndex5 = cursorInitPhoneMedia.getColumnIndex("bucket_id");
            cursorInitPhoneMedia.getColumnIndex("bucket_display_name");
            int columnIndex6 = cursorInitPhoneMedia.getColumnIndex("_size");
            int columnIndex7 = cursorInitPhoneMedia.getColumnIndex("latitude");
            int columnIndex8 = cursorInitPhoneMedia.getColumnIndex("longitude");
            int columnIndex9 = cursorInitPhoneMedia.getColumnIndex("datetaken");
            for (int i = 0; i < cursorInitPhoneMedia.getCount(); i++) {
                cursorInitPhoneMedia.moveToPosition(i);
                int i2 = cursorInitPhoneMedia.getInt(columnIndex3);
                String str2 = "m" + Long.toString(cursorInitPhoneMedia.getLong(columnIndex));
                String string = cursorInitPhoneMedia.getString(columnIndex2);
                long j = cursorInitPhoneMedia.getLong(columnIndex4);
                long j2 = cursorInitPhoneMedia.getLong(columnIndex6);
                double d2 = cursorInitPhoneMedia.getDouble(columnIndex7);
                double d3 = cursorInitPhoneMedia.getDouble(columnIndex8);
                String str3 = "b" + Long.toString(cursorInitPhoneMedia.getLong(columnIndex5));
                long j3 = cursorInitPhoneMedia.getLong(columnIndex9) / 1000;
                if (string.startsWith(str) && j3 > 0) {
                    arrayList.add(new MediaModel(str2, string, i2, j, j2, null, d2, d3, j3));
                }
            }
        }
        return arrayList;
    }

    private static String getCapturedMediaFolder() {
        return Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DCIM).getAbsolutePath();
    }

    public ArrayList<MediaModel> getAssetsInInterval(long j, long j2) {
        ArrayList<MediaModel> arrayList = new ArrayList<>();
        for (MediaModel mediaModel : this.assetMap.values()) {
            if (mediaModel.getDate() < j2 && mediaModel.getDate() > j) {
                arrayList.add(mediaModel);
            }
        }
        return arrayList;
    }

    private TreeMap<String, MediaModel> getAssetMap(Context context) {
        ArrayList<MediaModel> assetsFromMediaStore = getAssetsFromMediaStore(context, URIUtil.SLASH);
        TreeMap<String, MediaModel> treeMap = new TreeMap<>();
        for (MediaModel mediaModel : assetsFromMediaStore) {
            treeMap.put(mediaModel.getId(), mediaModel);
        }
        return treeMap;
    }

    private TreeMap<String, MediaModel> getAssetMap(Context context, long j, long j2) {
        ArrayList<MediaModel> assetsFromMediaStore = getAssetsFromMediaStore(context, getCapturedMediaFolder());
        TreeMap<String, MediaModel> treeMap = new TreeMap<>();
        for (MediaModel mediaModel : assetsFromMediaStore) {
            if (mediaModel.getDate() >= j && mediaModel.getDate() <= j2) {
                treeMap.put(mediaModel.getId(), mediaModel);
            }
        }
        return treeMap;
    }

    private Group getAssetGroupSortedOnTimeStamp() {
        ArrayList arrayList = new ArrayList();
        Iterator<Map.Entry<String, MediaModel>> it = this.assetMap.entrySet().iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getValue());
        }
        Collections.sort(arrayList, new Comparator<MediaModel>() { // from class: com.adobe.premiereclip.mediabrowser.grouping.GroupingManager.4
            @Override // java.util.Comparator
            public int compare(MediaModel mediaModel, MediaModel mediaModel2) {
                return (int) (mediaModel.getDate() - mediaModel2.getDate());
            }
        });
        ArrayList<Group> arrayList2 = new ArrayList<>();
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            arrayList2.add(new Group((MediaModel) it2.next()));
        }
        Group group = new Group();
        group.setChildren(arrayList2);
        return group;
    }

    private ArrayList<Group> getAssetGroupsCreatedInIntervals(long j, long j2, long j3) {
        ArrayList arrayList = new ArrayList();
        ArrayList<Group> arrayList2 = new ArrayList<>();
        ArrayList<Group> children = getAssetGroupSortedOnTimeStamp().getChildren();
        if (!children.isEmpty()) {
            long date = this.assetMap.get(children.get(0).getId()).getDate();
            long date2 = this.assetMap.get(children.get(children.size() - 1).getId()).getDate();
            if (j2 == -1) {
                j2 = getStartTime(date, j);
            }
            if (j3 == -1) {
                j3 = getEndTime(date2, j);
            }
            double dCeil = Math.ceil((j3 - j2) / j);
            if (dCeil == 0.0d || dCeil - ((double) ((int) dCeil)) > 0.0d) {
                dCeil += 1.0d;
            }
            for (int i = 0; i < ((int) dCeil); i++) {
                arrayList.add(new Group());
            }
            for (Group group : children) {
                long date3 = this.assetMap.get(group.getId()).getDate();
                if (date3 >= j2) {
                    if (date3 > j3) {
                        break;
                    }
                    if (date3 == j3) {
                        ((Group) arrayList.get(arrayList.size() - 1)).addChild(group);
                    } else {
                        ((Group) arrayList.get((int) ((date3 - j2) / j))).addChild(group);
                    }
                }
            }
            int i2 = 0;
            Group group2 = new Group();
            boolean z = false;
            while (true) {
                int i3 = i2;
                if (i3 >= arrayList.size()) {
                    break;
                }
                Group group3 = (Group) arrayList.get(i3);
                if (z && group3.isEmpty()) {
                    arrayList2.add(group3);
                } else {
                    group2.getChildren().addAll(group3.getChildren());
                    if (group2.getChildren().size() >= 5) {
                        arrayList2.add(group2);
                        group2 = new Group();
                        z = true;
                    } else if (!group2.isEmpty()) {
                        z = false;
                    }
                }
                i2 = i3 + 1;
            }
            if (!group2.isEmpty()) {
                if (arrayList2.isEmpty()) {
                    arrayList2.add(group2);
                } else {
                    arrayList2.get(arrayList2.size() - 1).getChildren().addAll(group2.getChildren());
                }
            }
        }
        return arrayList2;
    }

    private long getStartTime(long j, long j2) {
        return j;
    }

    private long getEndTime(long j, long j2) {
        return j;
    }

    private Pair<Long, Long> getStartEndTime(ArrayList<Group> arrayList) {
        int i = 0;
        while (i < arrayList.size() && arrayList.get(i).isEmpty()) {
            i++;
        }
        Group group = arrayList.get(i);
        long date = this.assetMap.get(group.getChildren().get(0).getId()).getDate();
        Iterator<Group> it = group.getChildren().iterator();
        while (it.hasNext()) {
            date = Math.min(date, this.assetMap.get(it.next().getId()).getDate());
        }
        int size = arrayList.size() - 1;
        while (size >= 0 && arrayList.get(size).isEmpty()) {
            size--;
        }
        Group group2 = arrayList.get(size);
        long date2 = this.assetMap.get(group2.getChildren().get(0).getId()).getDate();
        Iterator<Group> it2 = group2.getChildren().iterator();
        while (it2.hasNext()) {
            date2 = Math.max(date2, this.assetMap.get(it2.next().getId()).getDate());
        }
        return new Pair<>(Long.valueOf(date), Long.valueOf(date2));
    }

    private ArrayList<Group> groupIntoTimeEvents(ArrayList<Group> arrayList, int i) {
        int i2;
        ArrayList<Group> arrayList2 = new ArrayList<>();
        ArrayList<Pair<Integer, Integer>> gaps = getGaps(arrayList);
        if (gaps.isEmpty()) {
            int i3 = i + 1;
            int size = 0;
            Iterator<Group> it = arrayList.iterator();
            while (true) {
                i2 = size;
                if (!it.hasNext()) {
                    break;
                }
                size = it.next().getChildren().size() + i2;
            }
            if (i3 < levels_vs_intervals.length) {
                Pair<Long, Long> startEndTime = getStartEndTime(arrayList);
                return groupIntoTimeEvents(getAssetGroupsCreatedInIntervals(levels_vs_intervals[i3], ((Long) startEndTime.first).longValue(), ((Long) startEndTime.second).longValue()), i3);
            }
            if (i2 > 100) {
                Group group = new Group();
                Iterator<Group> it2 = arrayList.iterator();
                Group group2 = group;
                while (it2.hasNext()) {
                    Iterator<Group> it3 = it2.next().getChildren().iterator();
                    while (it3.hasNext()) {
                        group2.addChild(it3.next());
                        if (group2.getChildren().size() == 100) {
                            arrayList2.add(group2);
                            group2 = new Group();
                        }
                    }
                }
                if (!group2.isEmpty()) {
                    arrayList2.add(group2);
                }
            } else {
                Group group3 = new Group();
                Iterator<Group> it4 = arrayList.iterator();
                while (it4.hasNext()) {
                    group3.addChildren(it4.next().getChildren());
                }
                arrayList2.add(group3);
            }
            return arrayList2;
        }
        for (Group group4 : getGroupsHeuristic(arrayList, gaps)) {
            if (!group4.isEmpty()) {
                ArrayList<Group> arrayListGroupIntoTimeEvents = groupIntoTimeEvents(group4.getChildren(), i);
                Group group5 = new Group();
                group5.addChildren(arrayListGroupIntoTimeEvents);
                arrayList2.add(group5);
            }
        }
        return arrayList2;
    }

    private double getMean(ArrayList<Integer> arrayList) {
        int i;
        double dIntValue = 0.0d;
        if (arrayList.isEmpty()) {
            return -1.0d;
        }
        Iterator<Integer> it = arrayList.iterator();
        double dIntValue2 = 0.0d;
        while (it.hasNext()) {
            dIntValue2 = ((double) it.next().intValue()) + dIntValue2;
        }
        double size = dIntValue2 / ((double) arrayList.size());
        double dIntValue3 = 0.0d;
        for (Integer num : arrayList) {
            dIntValue3 = ((((double) num.intValue()) - size) * (((double) num.intValue()) - size)) + dIntValue3;
        }
        double dSqrt = Math.sqrt(dIntValue3) / ((double) arrayList.size());
        if (dSqrt == 0.0d) {
            return size;
        }
        int i2 = 0;
        Iterator<Integer> it2 = arrayList.iterator();
        while (true) {
            i = i2;
            if (!it2.hasNext()) {
                break;
            }
            Integer next = it2.next();
            if (Math.abs(((double) next.intValue()) - size) / dSqrt <= 1.0d) {
                dIntValue += (double) next.intValue();
                i2 = i + 1;
            } else {
                i2 = i;
            }
        }
        return i == 0 ? size : dIntValue / ((double) i);
    }

    private ArrayList<Group> getGroupsHeuristic(ArrayList<Group> arrayList, ArrayList<Pair<Integer, Integer>> arrayList2) {
        ArrayList arrayList3 = new ArrayList();
        ArrayList<Integer> arrayList4 = new ArrayList<>();
        for (Pair<Integer, Integer> pair : arrayList2) {
            arrayList4.add(Integer.valueOf((((Integer) pair.second).intValue() - ((Integer) pair.first).intValue()) + 1));
        }
        double mean = getMean(arrayList4);
        for (Pair<Integer, Integer> pair2 : arrayList2) {
            int iIntValue = (((Integer) pair2.second).intValue() - ((Integer) pair2.first).intValue()) + 1;
            if (iIntValue >= mean) {
                arrayList3.add(Integer.valueOf(((Integer) pair2.first).intValue() + (iIntValue / 2)));
            }
        }
        arrayList3.add(Integer.valueOf(arrayList.size()));
        ArrayList<Group> arrayList5 = new ArrayList<>();
        int iIntValue2 = 0;
        Iterator it = arrayList3.iterator();
        while (true) {
            int i = iIntValue2;
            if (it.hasNext()) {
                Integer num = (Integer) it.next();
                Group group = new Group();
                while (true) {
                    int i2 = i;
                    if (i2 < num.intValue()) {
                        group.addChild(arrayList.get(i2));
                        i = i2 + 1;
                    }
                }
                arrayList5.add(group);
                iIntValue2 = num.intValue();
            } else {
                return arrayList5;
            }
        }
    }

    private ArrayList<Pair<Integer, Integer>> getGaps(ArrayList<Group> arrayList) {
        ArrayList<Pair<Integer, Integer>> arrayList2 = new ArrayList<>();
        int size = arrayList.size() - 1;
        while (size >= 0 && arrayList.get(size).isEmpty()) {
            arrayList.remove(arrayList.size() - 1);
            size--;
        }
        int i = size + 1;
        int i2 = 0;
        while (i2 < i && arrayList.get(i2).isEmpty()) {
            i2++;
        }
        while (i2 < i) {
            while (i2 < i && !arrayList.get(i2).isEmpty()) {
                i2++;
            }
            if (i2 == i) {
                break;
            }
            int i3 = i2;
            while (i3 < i && arrayList.get(i3).isEmpty()) {
                i3++;
            }
            arrayList2.add(new Pair<>(Integer.valueOf(i2), Integer.valueOf(i3)));
            if (i3 == i) {
                break;
            }
            i2 = i3;
        }
        return arrayList2;
    }

    private void predictLocations(Group group) {
        if (group.areAllChildrenLeaves()) {
            relocateGroup(group);
            return;
        }
        Iterator<Group> it = group.getChildren().iterator();
        while (it.hasNext()) {
            predictLocations(it.next());
        }
    }

    private void relocateGroup(Group group) {
        int i;
        int i2;
        if (!group.isEmpty()) {
            int i3 = -1;
            int i4 = 0;
            while (true) {
                i = i4;
                i2 = i3;
                if (i >= group.getChildren().size()) {
                    break;
                }
                Group group2 = group.getChildren().get(i);
                double latitude = this.assetMap.get(group2.getId()).getLatitude();
                double longitude = this.assetMap.get(group2.getId()).getLongitude();
                if (latitude == 0.0d || longitude == 0.0d) {
                    i3 = i2;
                } else {
                    interpolateGroup(group, i2, i);
                    i3 = i;
                }
                i4 = i + 1;
            }
            if (i2 <= i - 1) {
                interpolateGroup(group, i2, i - 1);
            }
        }
    }

    private void interpolateGroup(Group group, int i, int i2) {
        long date;
        long date2;
        if (i == -1) {
            date = -1;
        } else {
            date = this.assetMap.get(group.getChildren().get(i).getId()).getDate();
        }
        if (i2 >= group.getChildren().size()) {
            date2 = -1;
        } else {
            date2 = this.assetMap.get(group.getChildren().get(i2).getId()).getDate();
        }
        if (date != -1 || date2 != -1) {
            int i3 = i + 1;
            while (true) {
                int i4 = i3;
                if (i4 < i2) {
                    MediaModel mediaModel = this.assetMap.get(group.getChildren().get(i + 1).getId());
                    MediaModel mediaModel2 = this.assetMap.get(group.getChildren().get(i2).getId());
                    MediaModel mediaModel3 = this.assetMap.get(group.getChildren().get(i4).getId());
                    long date3 = mediaModel3.getDate();
                    long j = 100000000000000L;
                    if (date != -1) {
                        j = date3 - date;
                    }
                    if (j <= (date2 != -1 ? date2 - date3 : 100000000000000L)) {
                        mediaModel3.setLatitude(mediaModel.getLatitude());
                        mediaModel3.setLongitude(mediaModel.getLongitude());
                    } else {
                        mediaModel3.setLatitude(mediaModel2.getLatitude());
                        mediaModel3.setLongitude(mediaModel2.getLongitude());
                    }
                    i3 = i4 + 1;
                } else {
                    return;
                }
            }
        }
    }

    private Pair<ArrayList<Integer>, Group> analyzeLocation(int i, Group group) {
        int i2;
        int i3 = 0;
        if (group.areAllChildrenLeaves()) {
            ArrayList<Integer> arrayListDivideEvent = divideEvent(group);
            if (i == 0) {
                Group group2 = new Group();
                group2.addChild(group);
                if (!arrayListDivideEvent.isEmpty()) {
                    Group groupRemove = group2.getChildren().remove(0);
                    arrayListDivideEvent.add(Integer.valueOf(groupRemove.getChildren().size() - 1));
                    int iIntValue = 0;
                    for (Integer num : arrayListDivideEvent) {
                        Group group3 = new Group();
                        while (true) {
                            int i4 = iIntValue;
                            if (i4 < num.intValue()) {
                                group3.addChild(groupRemove.getChildren().get(i4));
                                iIntValue = i4 + 1;
                            }
                        }
                        group2.getChildren().add(i3, group3);
                        i3++;
                        iIntValue = num.intValue();
                    }
                    arrayListDivideEvent.remove(arrayListDivideEvent.size() - 1);
                }
                return new Pair<>(arrayListDivideEvent, group2);
            }
            return new Pair<>(arrayListDivideEvent, group);
        }
        for (int i5 = 0; i5 < group.getChildren().size(); i5 = i2 + 1) {
            ArrayList<Integer> arrayList = (ArrayList) analyzeLocation(i + 1, group.getChildren().get(i5)).first;
            if (arrayList.isEmpty()) {
                i2 = i5;
            } else {
                Group groupRemove2 = group.getChildren().remove(i5);
                arrayList.add(Integer.valueOf(groupRemove2.getChildren().size() - 1));
                int iIntValue2 = 0;
                i2 = i5;
                for (Integer num2 : arrayList) {
                    Group group4 = new Group();
                    while (true) {
                        int i6 = iIntValue2;
                        if (i6 < num2.intValue()) {
                            group4.addChild(groupRemove2.getChildren().get(i6));
                            iIntValue2 = i6 + 1;
                        }
                    }
                    group.getChildren().add(i2, group4);
                    i2++;
                    iIntValue2 = num2.intValue();
                }
                arrayList.remove(arrayList.size() - 1);
            }
        }
        return new Pair<>(new ArrayList(), group);
    }

    private ArrayList<Integer> divideEvent(Group group) {
        int i = 0;
        ArrayList<Integer> arrayList = new ArrayList<>();
        MediaModel mediaModel = this.assetMap.get(group.getChildren().get(0).getId());
        if (mediaModel.getLatitude() == 0.0d || mediaModel.getLongitude() == 0.0d) {
            return arrayList;
        }
        int i2 = 1;
        while (true) {
            int i3 = i2;
            int i4 = i;
            if (i3 >= group.getChildren().size()) {
                return arrayList;
            }
            MediaModel mediaModel2 = this.assetMap.get(group.getChildren().get(i3).getId());
            MediaModel mediaModel3 = this.assetMap.get(group.getChildren().get(i3 - 1).getId());
            if (getDistance(mediaModel3.getLatitude(), mediaModel3.getLongitude(), mediaModel2.getLatitude(), mediaModel2.getLongitude()) < DISTANCE_THRESHOLD || i3 - i4 <= 5) {
                i = i4;
            } else {
                arrayList.add(Integer.valueOf(i3));
                i = i3;
            }
            i2 = i3 + 1;
        }
    }

    private double getDistance(double d2, double d3, double d4, double d5) {
        return Math.sqrt(((d2 - d4) * (d2 - d4)) + ((d3 - d5) * (d3 - d5)));
    }
}
