.class Lcom/dropbox/core/v2/sharing/PendingUploadMode$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "PendingUploadMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/PendingUploadMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/PendingUploadMode$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/dropbox/core/v2/sharing/PendingUploadMode$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/PendingUploadMode$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/PendingUploadMode$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/PendingUploadMode$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/PendingUploadMode;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 62
    const/4 v1, 0x1

    .line 63
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/PendingUploadMode$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 71
    :goto_0
    if-nez v0, :cond_1

    .line 72
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    const/4 v1, 0x0

    .line 68
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/PendingUploadMode$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 69
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/PendingUploadMode$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 74
    :cond_1
    const-string/jumbo v2, "file"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 75
    sget-object v0, Lcom/dropbox/core/v2/sharing/PendingUploadMode;->FILE:Lcom/dropbox/core/v2/sharing/PendingUploadMode;

    .line 83
    :goto_1
    if-nez v1, :cond_2

    .line 84
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/PendingUploadMode$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 85
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/PendingUploadMode$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 87
    :cond_2
    return-object v0

    .line 77
    :cond_3
    const-string/jumbo v2, "folder"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 78
    sget-object v0, Lcom/dropbox/core/v2/sharing/PendingUploadMode;->FOLDER:Lcom/dropbox/core/v2/sharing/PendingUploadMode;

    goto :goto_1

    .line 81
    :cond_4
    new-instance v1, Lcom/d/a/a/j;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/PendingUploadMode$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/PendingUploadMode;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/PendingUploadMode;Lcom/d/a/a/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 41
    sget-object v0, Lcom/dropbox/core/v2/sharing/PendingUploadMode$1;->$SwitchMap$com$dropbox$core$v2$sharing$PendingUploadMode:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/PendingUploadMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unrecognized tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :pswitch_0
    const-string/jumbo v0, "file"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 54
    :goto_0
    return-void

    .line 47
    :pswitch_1
    const-string/jumbo v0, "folder"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 41
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 36
    check-cast p1, Lcom/dropbox/core/v2/sharing/PendingUploadMode;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/PendingUploadMode$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/PendingUploadMode;Lcom/d/a/a/g;)V

    return-void
.end method
