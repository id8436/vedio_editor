.class Lcom/twitter/sdk/android/tweetcomposer/o;
.super Ljava/lang/Object;
.source "FileUtils.java"


# direct methods
.method static a(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 41
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v1, v4, :cond_1

    move v1, v2

    .line 42
    :goto_0
    if-eqz v1, :cond_2

    invoke-static {p1}, Lcom/twitter/sdk/android/tweetcomposer/o;->a(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 43
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 44
    const-string/jumbo v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 45
    aget-object v4, v1, v3

    .line 48
    const-string/jumbo v5, "image"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 49
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 56
    const-string/jumbo v4, "_id=?"

    .line 57
    new-array v4, v2, [Ljava/lang/String;

    aget-object v1, v1, v2

    aput-object v1, v4, v3

    .line 60
    const-string/jumbo v1, "_id=?"

    invoke-static {p0, v0, v1, v4}, Lcom/twitter/sdk/android/tweetcomposer/o;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    :cond_0
    :goto_1
    return-object v0

    :cond_1
    move v1, v3

    .line 41
    goto :goto_0

    .line 61
    :cond_2
    invoke-static {p1}, Lcom/twitter/sdk/android/tweetcomposer/o;->b(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 62
    invoke-static {p0, p1, v0, v0}, Lcom/twitter/sdk/android/tweetcomposer/o;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 63
    :cond_3
    invoke-static {p1}, Lcom/twitter/sdk/android/tweetcomposer/o;->c(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method static a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 82
    .line 83
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "_data"

    aput-object v1, v2, v0

    .line 85
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 86
    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    const-string/jumbo v0, "_data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 88
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 91
    if-eqz v1, :cond_0

    .line 92
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 95
    :cond_0
    :goto_0
    return-object v0

    .line 91
    :cond_1
    if-eqz v1, :cond_2

    .line 92
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v6

    .line 95
    goto :goto_0

    .line 91
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v6, :cond_3

    .line 92
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 91
    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_1
.end method

.method static a(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 102
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/sdk/android/tweetcomposer/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "application/octet-stream"

    goto :goto_0
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    if-nez p0, :cond_0

    .line 115
    const/4 v0, 0x0

    .line 118
    :goto_0
    return-object v0

    .line 117
    :cond_0
    const-string/jumbo v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 118
    if-gez v0, :cond_1

    const-string/jumbo v0, ""

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Landroid/net/Uri;)Z
    .locals 2

    .prologue
    .line 70
    const-string/jumbo v0, "com.android.providers.media.documents"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static b(Landroid/net/Uri;)Z
    .locals 2

    .prologue
    .line 74
    const-string/jumbo v0, "content"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static c(Landroid/net/Uri;)Z
    .locals 2

    .prologue
    .line 78
    const-string/jumbo v0, "file"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
