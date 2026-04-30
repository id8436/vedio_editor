.class Lcom/adobe/premiereclip/sharing/TwitterUpload$8;
.super Ld/az;
.source "TwitterUpload.java"


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/sharing/TwitterUpload;

.field final synthetic val$chunkPart:I


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/sharing/TwitterUpload;I)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload$8;->this$0:Lcom/adobe/premiereclip/sharing/TwitterUpload;

    iput p2, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload$8;->val$chunkPart:I

    invoke-direct {p0}, Ld/az;-><init>()V

    return-void
.end method


# virtual methods
.method public contentType()Ld/an;
    .locals 1

    .prologue
    .line 223
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
    .line 227
    iget v0, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload$8;->val$chunkPart:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Le/i;->b(Ljava/lang/String;Ljava/nio/charset/Charset;)Le/i;

    .line 228
    return-void
.end method
