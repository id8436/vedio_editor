.class public Lcom/adobe/premiereclip/mediabrowser/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getThumbnailDataFromBuckets(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/mediabrowser/Bucket;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 64
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 65
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/Bucket;

    .line 66
    new-instance v3, Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;

    invoke-direct {v3, v0}, Lcom/adobe/premiereclip/mediabrowser/ThumbnailData;-><init>(Lcom/adobe/premiereclip/mediabrowser/Bucket;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/Bucket;->getState()Lcom/adobe/premiereclip/mediabrowser/Bucket$State;

    move-result-object v3

    sget-object v4, Lcom/adobe/premiereclip/mediabrowser/Bucket$State;->EXPANDED:Lcom/adobe/premiereclip/mediabrowser/Bucket$State;

    if-ne v3, v4, :cond_0

    .line 68
    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediabrowser/Bucket;->getThumbnailItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 64
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 71
    :cond_1
    return-object v2
.end method

.method public static initPhoneMedia(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 7

    .prologue
    .line 24
    const/4 v6, 0x0

    .line 26
    :try_start_0
    const-string/jumbo v0, "date_added"

    .line 27
    const/16 v0, 0xa

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string/jumbo v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string/jumbo v1, "media_type"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string/jumbo v1, "duration"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string/jumbo v1, "bucket_id"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string/jumbo v1, "bucket_display_name"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string/jumbo v1, "_size"

    aput-object v1, v2, v0

    const/4 v0, 0x7

    const-string/jumbo v1, "latitude"

    aput-object v1, v2, v0

    const/16 v0, 0x8

    const-string/jumbo v1, "longitude"

    aput-object v1, v2, v0

    const/16 v0, 0x9

    const-string/jumbo v1, "datetaken"

    aput-object v1, v2, v0

    .line 39
    const/16 v0, 0xc

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "3gp"

    aput-object v1, v4, v0

    const/4 v0, 0x1

    const-string/jumbo v1, "3gpp"

    aput-object v1, v4, v0

    const/4 v0, 0x2

    const-string/jumbo v1, "3gpp2"

    aput-object v1, v4, v0

    const/4 v0, 0x3

    const-string/jumbo v1, "3g2"

    aput-object v1, v4, v0

    const/4 v0, 0x4

    const-string/jumbo v1, "mp4"

    aput-object v1, v4, v0

    const/4 v0, 0x5

    const-string/jumbo v1, "mov"

    aput-object v1, v4, v0

    const/4 v0, 0x6

    const-string/jumbo v1, "jpg"

    aput-object v1, v4, v0

    const/4 v0, 0x7

    const-string/jumbo v1, "jpeg"

    aput-object v1, v4, v0

    const/16 v0, 0x8

    const-string/jumbo v1, "png"

    aput-object v1, v4, v0

    const/16 v0, 0x9

    const-string/jumbo v1, "bmp"

    aput-object v1, v4, v0

    const/16 v0, 0xa

    const-string/jumbo v1, "gif"

    aput-object v1, v4, v0

    const/16 v0, 0xb

    const-string/jumbo v1, "tiff"

    aput-object v1, v4, v0

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "( media_type=1 OR ( media_type=3 AND duration>0 ) ) AND ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, v4

    .line 52
    invoke-static {v1}, Lcom/adobe/premiereclip/util/Utilities;->getQueryForSelectingExtensions(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 55
    invoke-static {v4}, Lcom/adobe/premiereclip/util/Utilities;->getRegexFromExtensions([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "date_added DESC"

    .line 54
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 59
    :goto_0
    return-object v0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v6

    goto :goto_0
.end method

.method public static pickUserAccount(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 75
    new-array v2, v3, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v2, v0

    .line 77
    if-eqz p2, :cond_0

    .line 78
    new-instance v0, Landroid/accounts/Account;

    invoke-direct {v0, p2, p1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    move-object v7, v1

    .line 79
    invoke-static/range {v0 .. v7}, Lcom/google/android/gms/common/AccountPicker;->newChooseAccountIntent(Landroid/accounts/Account;Ljava/util/ArrayList;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 85
    :goto_0
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 86
    return-void

    :cond_0
    move-object v0, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    move-object v7, v1

    .line 82
    invoke-static/range {v0 .. v7}, Lcom/google/android/gms/common/AccountPicker;->newChooseAccountIntent(Landroid/accounts/Account;Ljava/util/ArrayList;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method
