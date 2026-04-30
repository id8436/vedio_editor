.class Lcom/adobe/premiereclip/sharing/TwitterUpload$5;
.super Ld/az;
.source "TwitterUpload.java"


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/sharing/TwitterUpload;

.field final synthetic val$byteSent:I

.field final synthetic val$data:[B

.field final synthetic val$fileSize:I

.field final synthetic val$isLast:Z

.field final synthetic val$mimeType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/sharing/TwitterUpload;Ljava/lang/String;[BIZI)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload$5;->this$0:Lcom/adobe/premiereclip/sharing/TwitterUpload;

    iput-object p2, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload$5;->val$mimeType:Ljava/lang/String;

    iput-object p3, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload$5;->val$data:[B

    iput p4, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload$5;->val$byteSent:I

    iput-boolean p5, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload$5;->val$isLast:Z

    iput p6, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload$5;->val$fileSize:I

    invoke-direct {p0}, Ld/az;-><init>()V

    return-void
.end method


# virtual methods
.method public contentType()Ld/an;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload$5;->val$mimeType:Ljava/lang/String;

    invoke-static {v0}, Ld/an;->a(Ljava/lang/String;)Ld/an;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Le/i;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    iget-object v1, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload$5;->val$data:[B

    iget v2, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload$5;->val$byteSent:I

    iget-boolean v0, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload$5;->val$isLast:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload$5;->val$fileSize:I

    iget v3, p0, Lcom/adobe/premiereclip/sharing/TwitterUpload$5;->val$byteSent:I

    sub-int/2addr v0, v3

    :goto_0
    invoke-interface {p1, v1, v2, v0}, Le/i;->c([BII)Le/i;

    .line 198
    return-void

    .line 197
    :cond_0
    const/high16 v0, 0x100000

    goto :goto_0
.end method
