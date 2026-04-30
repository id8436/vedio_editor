.class Lcom/dropbox/core/v2/paper/PaperDocUpdateError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "PaperDocUpdateError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/paper/PaperDocUpdateError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/paper/PaperDocUpdateError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lcom/dropbox/core/v2/paper/PaperDocUpdateError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/paper/PaperDocUpdateError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/paper/PaperDocUpdateError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/PaperDocUpdateError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/paper/PaperDocUpdateError;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 119
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 120
    const/4 v1, 0x1

    .line 121
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/PaperDocUpdateError$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 129
    :goto_0
    if-nez v0, :cond_1

    .line 130
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_0
    const/4 v1, 0x0

    .line 126
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/PaperDocUpdateError$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 127
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/PaperDocUpdateError$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 132
    :cond_1
    const-string/jumbo v2, "insufficient_permissions"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 133
    sget-object v0, Lcom/dropbox/core/v2/paper/PaperDocUpdateError;->INSUFFICIENT_PERMISSIONS:Lcom/dropbox/core/v2/paper/PaperDocUpdateError;

    .line 162
    :goto_1
    if-nez v1, :cond_2

    .line 163
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/PaperDocUpdateError$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 164
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/PaperDocUpdateError$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 166
    :cond_2
    return-object v0

    .line 135
    :cond_3
    const-string/jumbo v2, "other"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 136
    sget-object v0, Lcom/dropbox/core/v2/paper/PaperDocUpdateError;->OTHER:Lcom/dropbox/core/v2/paper/PaperDocUpdateError;

    goto :goto_1

    .line 138
    :cond_4
    const-string/jumbo v2, "doc_not_found"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 139
    sget-object v0, Lcom/dropbox/core/v2/paper/PaperDocUpdateError;->DOC_NOT_FOUND:Lcom/dropbox/core/v2/paper/PaperDocUpdateError;

    goto :goto_1

    .line 141
    :cond_5
    const-string/jumbo v2, "content_malformed"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 142
    sget-object v0, Lcom/dropbox/core/v2/paper/PaperDocUpdateError;->CONTENT_MALFORMED:Lcom/dropbox/core/v2/paper/PaperDocUpdateError;

    goto :goto_1

    .line 144
    :cond_6
    const-string/jumbo v2, "revision_mismatch"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 145
    sget-object v0, Lcom/dropbox/core/v2/paper/PaperDocUpdateError;->REVISION_MISMATCH:Lcom/dropbox/core/v2/paper/PaperDocUpdateError;

    goto :goto_1

    .line 147
    :cond_7
    const-string/jumbo v2, "doc_length_exceeded"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 148
    sget-object v0, Lcom/dropbox/core/v2/paper/PaperDocUpdateError;->DOC_LENGTH_EXCEEDED:Lcom/dropbox/core/v2/paper/PaperDocUpdateError;

    goto :goto_1

    .line 150
    :cond_8
    const-string/jumbo v2, "image_size_exceeded"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 151
    sget-object v0, Lcom/dropbox/core/v2/paper/PaperDocUpdateError;->IMAGE_SIZE_EXCEEDED:Lcom/dropbox/core/v2/paper/PaperDocUpdateError;

    goto :goto_1

    .line 153
    :cond_9
    const-string/jumbo v2, "doc_archived"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 154
    sget-object v0, Lcom/dropbox/core/v2/paper/PaperDocUpdateError;->DOC_ARCHIVED:Lcom/dropbox/core/v2/paper/PaperDocUpdateError;

    goto :goto_1

    .line 156
    :cond_a
    const-string/jumbo v2, "doc_deleted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 157
    sget-object v0, Lcom/dropbox/core/v2/paper/PaperDocUpdateError;->DOC_DELETED:Lcom/dropbox/core/v2/paper/PaperDocUpdateError;

    goto :goto_1

    .line 160
    :cond_b
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
    .line 66
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/paper/PaperDocUpdateError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/paper/PaperDocUpdateError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/paper/PaperDocUpdateError;Lcom/d/a/a/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 71
    sget-object v0, Lcom/dropbox/core/v2/paper/PaperDocUpdateError$1;->$SwitchMap$com$dropbox$core$v2$paper$PaperDocUpdateError:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/paper/PaperDocUpdateError;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 109
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

    .line 73
    :pswitch_0
    const-string/jumbo v0, "insufficient_permissions"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 112
    :goto_0
    return-void

    .line 77
    :pswitch_1
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :pswitch_2
    const-string/jumbo v0, "doc_not_found"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :pswitch_3
    const-string/jumbo v0, "content_malformed"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :pswitch_4
    const-string/jumbo v0, "revision_mismatch"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :pswitch_5
    const-string/jumbo v0, "doc_length_exceeded"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :pswitch_6
    const-string/jumbo v0, "image_size_exceeded"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :pswitch_7
    const-string/jumbo v0, "doc_archived"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :pswitch_8
    const-string/jumbo v0, "doc_deleted"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
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
    .line 66
    check-cast p1, Lcom/dropbox/core/v2/paper/PaperDocUpdateError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/paper/PaperDocUpdateError$Serializer;->serialize(Lcom/dropbox/core/v2/paper/PaperDocUpdateError;Lcom/d/a/a/g;)V

    return-void
.end method
