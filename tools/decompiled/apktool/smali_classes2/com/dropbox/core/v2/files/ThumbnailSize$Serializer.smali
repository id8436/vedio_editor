.class Lcom/dropbox/core/v2/files/ThumbnailSize$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "ThumbnailSize.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/files/ThumbnailSize;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/files/ThumbnailSize$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/dropbox/core/v2/files/ThumbnailSize$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/ThumbnailSize$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/files/ThumbnailSize$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ThumbnailSize$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/ThumbnailSize;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 81
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 82
    const/4 v1, 0x1

    .line 83
    invoke-static {p1}, Lcom/dropbox/core/v2/files/ThumbnailSize$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 91
    :goto_0
    if-nez v0, :cond_1

    .line 92
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_0
    const/4 v1, 0x0

    .line 88
    invoke-static {p1}, Lcom/dropbox/core/v2/files/ThumbnailSize$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 89
    invoke-static {p1}, Lcom/dropbox/core/v2/files/ThumbnailSize$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 94
    :cond_1
    const-string/jumbo v2, "w32h32"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 95
    sget-object v0, Lcom/dropbox/core/v2/files/ThumbnailSize;->W32H32:Lcom/dropbox/core/v2/files/ThumbnailSize;

    .line 112
    :goto_1
    if-nez v1, :cond_2

    .line 113
    invoke-static {p1}, Lcom/dropbox/core/v2/files/ThumbnailSize$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 114
    invoke-static {p1}, Lcom/dropbox/core/v2/files/ThumbnailSize$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 116
    :cond_2
    return-object v0

    .line 97
    :cond_3
    const-string/jumbo v2, "w64h64"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 98
    sget-object v0, Lcom/dropbox/core/v2/files/ThumbnailSize;->W64H64:Lcom/dropbox/core/v2/files/ThumbnailSize;

    goto :goto_1

    .line 100
    :cond_4
    const-string/jumbo v2, "w128h128"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 101
    sget-object v0, Lcom/dropbox/core/v2/files/ThumbnailSize;->W128H128:Lcom/dropbox/core/v2/files/ThumbnailSize;

    goto :goto_1

    .line 103
    :cond_5
    const-string/jumbo v2, "w640h480"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 104
    sget-object v0, Lcom/dropbox/core/v2/files/ThumbnailSize;->W640H480:Lcom/dropbox/core/v2/files/ThumbnailSize;

    goto :goto_1

    .line 106
    :cond_6
    const-string/jumbo v2, "w1024h768"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 107
    sget-object v0, Lcom/dropbox/core/v2/files/ThumbnailSize;->W1024H768:Lcom/dropbox/core/v2/files/ThumbnailSize;

    goto :goto_1

    .line 110
    :cond_7
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
    .line 44
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/files/ThumbnailSize$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/files/ThumbnailSize;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/files/ThumbnailSize;Lcom/d/a/a/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 49
    sget-object v0, Lcom/dropbox/core/v2/files/ThumbnailSize$1;->$SwitchMap$com$dropbox$core$v2$files$ThumbnailSize:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/files/ThumbnailSize;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 71
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

    .line 51
    :pswitch_0
    const-string/jumbo v0, "w32h32"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 74
    :goto_0
    return-void

    .line 55
    :pswitch_1
    const-string/jumbo v0, "w64h64"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :pswitch_2
    const-string/jumbo v0, "w128h128"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :pswitch_3
    const-string/jumbo v0, "w640h480"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :pswitch_4
    const-string/jumbo v0, "w1024h768"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
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
    .line 44
    check-cast p1, Lcom/dropbox/core/v2/files/ThumbnailSize;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/files/ThumbnailSize$Serializer;->serialize(Lcom/dropbox/core/v2/files/ThumbnailSize;Lcom/d/a/a/g;)V

    return-void
.end method
