.class Lcom/dropbox/core/v2/paper/PaperDocCreateError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "PaperDocCreateError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/paper/PaperDocCreateError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/paper/PaperDocCreateError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/dropbox/core/v2/paper/PaperDocCreateError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/paper/PaperDocCreateError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/paper/PaperDocCreateError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/PaperDocCreateError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/paper/PaperDocCreateError;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 95
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 96
    const/4 v1, 0x1

    .line 97
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/PaperDocCreateError$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 105
    :goto_0
    if-nez v0, :cond_1

    .line 106
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    const/4 v1, 0x0

    .line 102
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/PaperDocCreateError$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 103
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/PaperDocCreateError$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 108
    :cond_1
    const-string/jumbo v2, "insufficient_permissions"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 109
    sget-object v0, Lcom/dropbox/core/v2/paper/PaperDocCreateError;->INSUFFICIENT_PERMISSIONS:Lcom/dropbox/core/v2/paper/PaperDocCreateError;

    .line 129
    :goto_1
    if-nez v1, :cond_2

    .line 130
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/PaperDocCreateError$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 131
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/PaperDocCreateError$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 133
    :cond_2
    return-object v0

    .line 111
    :cond_3
    const-string/jumbo v2, "other"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 112
    sget-object v0, Lcom/dropbox/core/v2/paper/PaperDocCreateError;->OTHER:Lcom/dropbox/core/v2/paper/PaperDocCreateError;

    goto :goto_1

    .line 114
    :cond_4
    const-string/jumbo v2, "content_malformed"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 115
    sget-object v0, Lcom/dropbox/core/v2/paper/PaperDocCreateError;->CONTENT_MALFORMED:Lcom/dropbox/core/v2/paper/PaperDocCreateError;

    goto :goto_1

    .line 117
    :cond_5
    const-string/jumbo v2, "folder_not_found"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 118
    sget-object v0, Lcom/dropbox/core/v2/paper/PaperDocCreateError;->FOLDER_NOT_FOUND:Lcom/dropbox/core/v2/paper/PaperDocCreateError;

    goto :goto_1

    .line 120
    :cond_6
    const-string/jumbo v2, "doc_length_exceeded"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 121
    sget-object v0, Lcom/dropbox/core/v2/paper/PaperDocCreateError;->DOC_LENGTH_EXCEEDED:Lcom/dropbox/core/v2/paper/PaperDocCreateError;

    goto :goto_1

    .line 123
    :cond_7
    const-string/jumbo v2, "image_size_exceeded"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 124
    sget-object v0, Lcom/dropbox/core/v2/paper/PaperDocCreateError;->IMAGE_SIZE_EXCEEDED:Lcom/dropbox/core/v2/paper/PaperDocCreateError;

    goto :goto_1

    .line 127
    :cond_8
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
    .line 54
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/paper/PaperDocCreateError$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/paper/PaperDocCreateError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/paper/PaperDocCreateError;Lcom/d/a/a/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 59
    sget-object v0, Lcom/dropbox/core/v2/paper/PaperDocCreateError$1;->$SwitchMap$com$dropbox$core$v2$paper$PaperDocCreateError:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/paper/PaperDocCreateError;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 85
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

    .line 61
    :pswitch_0
    const-string/jumbo v0, "insufficient_permissions"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 88
    :goto_0
    return-void

    .line 65
    :pswitch_1
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :pswitch_2
    const-string/jumbo v0, "content_malformed"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :pswitch_3
    const-string/jumbo v0, "folder_not_found"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :pswitch_4
    const-string/jumbo v0, "doc_length_exceeded"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :pswitch_5
    const-string/jumbo v0, "image_size_exceeded"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 59
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
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
    .line 54
    check-cast p1, Lcom/dropbox/core/v2/paper/PaperDocCreateError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/paper/PaperDocCreateError$Serializer;->serialize(Lcom/dropbox/core/v2/paper/PaperDocCreateError;Lcom/d/a/a/g;)V

    return-void
.end method
