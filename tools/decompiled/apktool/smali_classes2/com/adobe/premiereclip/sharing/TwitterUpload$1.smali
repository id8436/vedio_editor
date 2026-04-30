.class Lcom/adobe/premiereclip/sharing/TwitterUpload$1;
.super Ljava/lang/Object;
.source "TwitterUpload.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/sharing/TwitterUpload;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/sharing/TwitterUpload;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload$1;->this$0:Lcom/adobe/premiereclip/sharing/TwitterUpload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 118
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload$1;->this$0:Lcom/adobe/premiereclip/sharing/TwitterUpload;

    invoke-static {v1}, Lcom/adobe/premiereclip/sharing/TwitterUpload;->access$000(Lcom/adobe/premiereclip/sharing/TwitterUpload;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v1, v2

    .line 120
    new-array v2, v1, [B

    .line 122
    const-string/jumbo v3, "video/mp4"

    .line 124
    :try_start_0
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 126
    const/4 v0, 0x0

    array-length v5, v2

    invoke-virtual {v4, v2, v0, v5}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 127
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    array-length v0, v2

    if-lez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload$1;->this$0:Lcom/adobe/premiereclip/sharing/TwitterUpload;

    invoke-static {v0, v2, v1, v3}, Lcom/adobe/premiereclip/sharing/TwitterUpload;->access$100(Lcom/adobe/premiereclip/sharing/TwitterUpload;[BILjava/lang/String;)V

    .line 134
    :cond_0
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 129
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
