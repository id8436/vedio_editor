.class public Lcom/google/gdata/client/appsforyourdomain/adminsettings/EncodeUtil;
.super Ljava/lang/Object;
.source "EncodeUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static encodeBinaryFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 47
    .line 50
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    .line 52
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    .line 53
    invoke-static {v1}, Lcom/google/gdata/util/common/util/Base64;->encode([B)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 59
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 61
    :goto_0
    return-object v0

    .line 54
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 55
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 59
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 56
    :catch_1
    move-exception v1

    move-object v2, v0

    .line 57
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 59
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 56
    :catch_2
    move-exception v1

    goto :goto_2

    .line 54
    :catch_3
    move-exception v1

    goto :goto_1
.end method
