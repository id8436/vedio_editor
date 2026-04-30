.class Lcom/adobe/premiereclip/sharing/TwitterUpload$6;
.super Ld/az;
.source "TwitterUpload.java"


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/sharing/TwitterUpload;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/sharing/TwitterUpload;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload$6;->this$0:Lcom/adobe/premiereclip/sharing/TwitterUpload;

    invoke-direct {p0}, Ld/az;-><init>()V

    return-void
.end method


# virtual methods
.method public contentType()Ld/an;
    .locals 1

    .prologue
    .line 203
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
    .line 207
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload$6;->this$0:Lcom/adobe/premiereclip/sharing/TwitterUpload;

    invoke-static {v0}, Lcom/adobe/premiereclip/sharing/TwitterUpload;->access$800(Lcom/adobe/premiereclip/sharing/TwitterUpload;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Le/i;->b(Ljava/lang/String;Ljava/nio/charset/Charset;)Le/i;

    .line 208
    return-void
.end method
