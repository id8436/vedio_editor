.class public Lcom/adobe/premiereclip/notification/NotificationHelper;
.super Ljava/lang/Object;
.source "NotificationHelper.java"


# static fields
.field private static final CHANNEL_ID:Ljava/lang/String; = "adobe_clip_channel_01"

.field private static final CHANNEL_NAME:Ljava/lang/CharSequence;

.field public static final INTENT_ARG_CLIP_NOTIFICATION:Ljava/lang/String; = "clip_notification"


# instance fields
.field private final AB_TESTING:Z

.field private final MIN_NUM_ASSETS:J

.field private abTestNotification:Lcom/adobe/premiereclip/analytics/ABTestNotification;

.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-string/jumbo v0, "Adobeclip channel"

    sput-object v0, Lcom/adobe/premiereclip/notification/NotificationHelper;->CHANNEL_NAME:Ljava/lang/CharSequence;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/premiereclip/notification/NotificationHelper;->AB_TESTING:Z

    .line 46
    const-wide/16 v0, 0x5

    iput-wide v0, p0, Lcom/adobe/premiereclip/notification/NotificationHelper;->MIN_NUM_ASSETS:J

    .line 55
    iput-object p1, p0, Lcom/adobe/premiereclip/notification/NotificationHelper;->context:Landroid/content/Context;

    .line 56
    new-instance v0, Lcom/adobe/premiereclip/analytics/ABTestNotification;

    invoke-direct {v0, p1}, Lcom/adobe/premiereclip/analytics/ABTestNotification;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/premiereclip/notification/NotificationHelper;->abTestNotification:Lcom/adobe/premiereclip/analytics/ABTestNotification;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/premiereclip/notification/NotificationHelper;Ljava/util/ArrayList;Z)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/adobe/premiereclip/notification/NotificationHelper;->postNotification(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method private getAppLaunchIntent(Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/mediabrowser/MediaModel;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 98
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 99
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    .line 100
    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 101
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 103
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/adobe/premiereclip/notification/NotificationHelper;->context:Landroid/content/Context;

    const-class v3, Lcom/adobe/premiereclip/TourViewActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 104
    const-string/jumbo v2, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    const v2, 0x10008000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 107
    const-string/jumbo v2, "multiple"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    const-string/jumbo v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 109
    const-string/jumbo v1, "clip_notification"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 110
    const-string/jumbo v1, "ab_testing"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 111
    return-object v0
.end method

.method private getCircleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 135
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 136
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 137
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 140
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 141
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v6, v6, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 142
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 144
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 145
    invoke-virtual {v2, v6, v6, v6, v6}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 146
    const/high16 v5, -0x10000

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 147
    invoke-virtual {v2, v0, v3}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 149
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 150
    invoke-virtual {v2, p1, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 152
    return-object v1
.end method

.method private getDismissPendingIntent()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    const/high16 v3, 0x8000000

    .line 83
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 84
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/adobe/premiereclip/notification/NotificationHelper;->context:Landroid/content/Context;

    const-class v2, Lcom/adobe/premiereclip/notification/DismissNotificationBroadcastReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    iget-object v1, p0, Lcom/adobe/premiereclip/notification/NotificationHelper;->context:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 93
    :goto_0
    return-object v0

    .line 91
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/adobe/premiereclip/notification/NotificationHelper;->context:Landroid/content/Context;

    const-class v2, Lcom/adobe/premiereclip/notification/ClipNotificationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    const-string/jumbo v1, "com.adobe.premiereclip.action.notificationrestart"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    iget-object v1, p0, Lcom/adobe/premiereclip/notification/NotificationHelper;->context:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0
.end method

.method private getMediaModels()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/mediabrowser/MediaModel;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x3e8

    .line 69
    iget-object v0, p0, Lcom/adobe/premiereclip/notification/NotificationHelper;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/ClipPreferences;->getNotificationScheduleTime()J

    move-result-wide v0

    div-long v2, v0, v4

    .line 70
    iget-object v0, p0, Lcom/adobe/premiereclip/notification/NotificationHelper;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/adobe/premiereclip/ClipPreferences;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/ClipPreferences;->getNotificationTime()J

    move-result-wide v0

    div-long v4, v0, v4

    .line 71
    new-instance v0, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;

    iget-object v1, p0, Lcom/adobe/premiereclip/notification/NotificationHelper;->context:Landroid/content/Context;

    invoke-direct/range {v0 .. v5}, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;-><init>(Landroid/content/Context;JJ)V

    .line 72
    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/grouping/GroupingManager;->getSortedMediaGroups()Ljava/util/ArrayList;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/Bucket;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/Bucket;->getItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-long v2, v1

    const-wide/16 v4, 0x5

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 79
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getMediaThumbnail(Lcom/adobe/premiereclip/mediabrowser/MediaModel;)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    .line 115
    .line 116
    iget-object v0, p0, Lcom/adobe/premiereclip/notification/NotificationHelper;->context:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 117
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 118
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 119
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 120
    iget v2, v1, Landroid/graphics/Point;->x:I

    .line 121
    mul-int/lit8 v0, v2, 0x9

    div-int/lit8 v3, v0, 0x10

    .line 122
    invoke-virtual {p1}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getMediaType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 123
    sget-object v0, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->IMAGE_NON_TITLE:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    invoke-virtual {p1}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getPath()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v4, -0x1

    invoke-static/range {v0 .. v5}, Lcom/adobe/premiereclip/util/Utilities;->decodeBitmap(Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;Ljava/lang/String;IIJ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 131
    :goto_0
    return-object v0

    .line 125
    :cond_0
    const/16 v0, 0x258

    .line 126
    invoke-virtual {p1}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getDuration()J

    move-result-wide v4

    const-wide/16 v6, 0x320

    cmp-long v1, v4, v6

    if-gez v1, :cond_1

    .line 127
    invoke-virtual {p1}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getDuration()J

    move-result-wide v0

    const-wide/16 v4, 0x2

    div-long/2addr v0, v4

    long-to-int v0, v0

    move v4, v0

    .line 129
    :goto_1
    sget-object v0, Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;->VIDEO:Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;

    invoke-virtual {p1}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getPath()Ljava/lang/String;

    move-result-object v1

    int-to-long v4, v4

    invoke-static/range {v0 .. v5}, Lcom/adobe/premiereclip/util/Utilities;->decodeBitmap(Lcom/adobe/premiereclip/project/sequence/Clip$CLIP_TYPE;Ljava/lang/String;IIJ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_1
    move v4, v0

    goto :goto_1
.end method

.method private getNotification(Ljava/util/ArrayList;Z)Landroid/app/Notification;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/mediabrowser/MediaModel;",
            ">;Z)",
            "Landroid/app/Notification;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 156
    iget-object v0, p0, Lcom/adobe/premiereclip/notification/NotificationHelper;->context:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/notification/NotificationHelper;->getAppLaunchIntent(Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x8000000

    invoke-static {v0, v5, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 158
    invoke-direct {p0}, Lcom/adobe/premiereclip/notification/NotificationHelper;->getDismissPendingIntent()Landroid/app/PendingIntent;

    move-result-object v2

    .line 159
    const/4 v0, 0x0

    .line 160
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 161
    const-string/jumbo v3, "ClipService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "media thumbnail path : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/MediaModel;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/MediaModel;

    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/notification/NotificationHelper;->getMediaThumbnail(Lcom/adobe/premiereclip/mediabrowser/MediaModel;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 164
    :cond_0
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/adobe/premiereclip/notification/NotificationHelper;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    .line 165
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    const v4, 0x7f0202a5

    .line 166
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/adobe/premiereclip/notification/NotificationHelper;->context:Landroid/content/Context;

    const v5, 0x7f0a04d6

    .line 167
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/adobe/premiereclip/notification/NotificationHelper;->context:Landroid/content/Context;

    const v5, 0x7f0a0443

    .line 168
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 169
    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 170
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x2

    .line 171
    invoke-static {v2}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 172
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_1

    .line 173
    const-string/jumbo v2, "adobe_clip_channel_01"

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 177
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_3

    .line 178
    invoke-direct {p0, v0}, Lcom/adobe/premiereclip/notification/NotificationHelper;->getCircleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 183
    :goto_0
    if-eqz p2, :cond_2

    .line 184
    new-instance v2, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {v2}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    invoke-virtual {v2, v0}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 186
    :cond_2
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 187
    const/16 v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 188
    return-object v0

    .line 181
    :cond_3
    iget-object v2, p0, Lcom/adobe/premiereclip/notification/NotificationHelper;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020192

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    goto :goto_0
.end method

.method private getNotificationChannel()Landroid/app/NotificationChannel;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .prologue
    .line 61
    const/4 v0, 0x4

    .line 63
    new-instance v1, Landroid/app/NotificationChannel;

    const-string/jumbo v2, "adobe_clip_channel_01"

    sget-object v3, Lcom/adobe/premiereclip/notification/NotificationHelper;->CHANNEL_NAME:Ljava/lang/CharSequence;

    invoke-direct {v1, v2, v3, v0}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 65
    return-object v1
.end method

.method public static getNotificationType(Ljava/lang/String;)Lcom/adobe/premiereclip/notification/NotificationHelper$NotificationType;
    .locals 1

    .prologue
    .line 234
    const-string/jumbo v0, "com.adobe.premiereclip.action.notificationstart"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    sget-object v0, Lcom/adobe/premiereclip/notification/NotificationHelper$NotificationType;->NOTIFICATION_START:Lcom/adobe/premiereclip/notification/NotificationHelper$NotificationType;

    .line 243
    :goto_0
    return-object v0

    .line 237
    :cond_0
    const-string/jumbo v0, "com.adobe.premiereclip.action.notificationend"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    sget-object v0, Lcom/adobe/premiereclip/notification/NotificationHelper$NotificationType;->NOTIFICATION_END:Lcom/adobe/premiereclip/notification/NotificationHelper$NotificationType;

    goto :goto_0

    .line 241
    :cond_1
    sget-object v0, Lcom/adobe/premiereclip/notification/NotificationHelper$NotificationType;->NOTIFICATION_RESTART:Lcom/adobe/premiereclip/notification/NotificationHelper$NotificationType;

    goto :goto_0
.end method

.method private postNotification(Ljava/util/ArrayList;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/mediabrowser/MediaModel;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Lcom/adobe/premiereclip/notification/NotificationHelper;->context:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 193
    invoke-direct {p0, p1, p2}, Lcom/adobe/premiereclip/notification/NotificationHelper;->getNotification(Ljava/util/ArrayList;Z)Landroid/app/Notification;

    move-result-object v1

    .line 194
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    .line 195
    invoke-direct {p0}, Lcom/adobe/premiereclip/notification/NotificationHelper;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 197
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 198
    const-string/jumbo v0, "ClipService"

    const-string/jumbo v1, "posted notification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return-void
.end method


# virtual methods
.method public onStart(Lcom/adobe/premiereclip/notification/NotificationHelper$NotificationType;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 202
    sget-object v0, Lcom/adobe/premiereclip/notification/NotificationHelper$NotificationType;->NOTIFICATION_START:Lcom/adobe/premiereclip/notification/NotificationHelper$NotificationType;

    if-ne p1, v0, :cond_2

    .line 203
    invoke-direct {p0}, Lcom/adobe/premiereclip/notification/NotificationHelper;->getMediaModels()Ljava/util/ArrayList;

    move-result-object v0

    .line 204
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 206
    iget-object v1, p0, Lcom/adobe/premiereclip/notification/NotificationHelper;->abTestNotification:Lcom/adobe/premiereclip/analytics/ABTestNotification;

    new-instance v2, Lcom/adobe/premiereclip/notification/NotificationHelper$1;

    invoke-direct {v2, p0, v0}, Lcom/adobe/premiereclip/notification/NotificationHelper$1;-><init>(Lcom/adobe/premiereclip/notification/NotificationHelper;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lcom/adobe/premiereclip/analytics/ABTestNotification;->decideGroup(Lcom/adobe/premiereclip/analytics/ABTesting$ABInterface;)V

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    const-string/jumbo v0, "ClipService"

    const-string/jumbo v1, "got empty list"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, p0, Lcom/adobe/premiereclip/notification/NotificationHelper;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/adobe/premiereclip/notification/ClipNotificationManager;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/notification/ClipNotificationManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/adobe/premiereclip/notification/ClipNotificationManager;->initNotification(Z)V

    goto :goto_0

    .line 223
    :cond_2
    sget-object v0, Lcom/adobe/premiereclip/notification/NotificationHelper$NotificationType;->NOTIFICATION_END:Lcom/adobe/premiereclip/notification/NotificationHelper$NotificationType;

    if-ne p1, v0, :cond_3

    .line 224
    iget-object v0, p0, Lcom/adobe/premiereclip/notification/NotificationHelper;->context:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 225
    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 227
    :cond_3
    sget-object v0, Lcom/adobe/premiereclip/notification/NotificationHelper$NotificationType;->NOTIFICATION_RESTART:Lcom/adobe/premiereclip/notification/NotificationHelper$NotificationType;

    if-ne p1, v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/adobe/premiereclip/notification/NotificationHelper;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/adobe/premiereclip/notification/ClipNotificationManager;->getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/notification/ClipNotificationManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/notification/ClipNotificationManager;->initNotification(Z)V

    goto :goto_0
.end method
