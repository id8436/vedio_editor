.class Lcom/adobe/premiereclip/sharing/TwitterUpload$7;
.super Ld/az;
.source "TwitterUpload.java"


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/sharing/TwitterUpload;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/sharing/TwitterUpload;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload$7;->this$0:Lcom/adobe/premiereclip/sharing/TwitterUpload;

    invoke-direct {p0}, Ld/az;-><init>()V

    return-void
.end method


# virtual methods
.method public contentType()Ld/an;
    .locals 1

    .prologue
    .line 213
    const-string/jumbo v0, "text/plain"

    invoke-static {v0}, Ld/an;->a(Ljava/lang/String;)Ld/an;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Le/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    const-string/jumbo v0, "APPEND"

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Le/i;->b(Ljava/lang/String;Ljava/nio/charset/Charset;)Le/i;

    .line 218
    return-void
.end method
