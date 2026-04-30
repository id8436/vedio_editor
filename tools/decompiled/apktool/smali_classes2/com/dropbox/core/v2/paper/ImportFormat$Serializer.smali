.class Lcom/dropbox/core/v2/paper/ImportFormat$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "ImportFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/paper/ImportFormat;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/paper/ImportFormat$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/dropbox/core/v2/paper/ImportFormat$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/paper/ImportFormat$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/paper/ImportFormat$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/ImportFormat$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/paper/ImportFormat;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 79
    const/4 v1, 0x1

    .line 80
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/ImportFormat$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 88
    :goto_0
    if-nez v0, :cond_1

    .line 89
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    const/4 v1, 0x0

    .line 85
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/ImportFormat$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 86
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/ImportFormat$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 91
    :cond_1
    const-string/jumbo v2, "html"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 92
    sget-object v0, Lcom/dropbox/core/v2/paper/ImportFormat;->HTML:Lcom/dropbox/core/v2/paper/ImportFormat;

    .line 103
    :goto_1
    if-nez v1, :cond_2

    .line 104
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/ImportFormat$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 105
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/ImportFormat$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 107
    :cond_2
    return-object v0

    .line 94
    :cond_3
    const-string/jumbo v2, "markdown"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 95
    sget-object v0, Lcom/dropbox/core/v2/paper/ImportFormat;->MARKDOWN:Lcom/dropbox/core/v2/paper/ImportFormat;

    goto :goto_1

    .line 97
    :cond_4
    const-string/jumbo v2, "plain_text"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 98
    sget-object v0, Lcom/dropbox/core/v2/paper/ImportFormat;->PLAIN_TEXT:Lcom/dropbox/core/v2/paper/ImportFormat;

    goto :goto_1

    .line 101
    :cond_5
    sget-object v0, Lcom/dropbox/core/v2/paper/ImportFormat;->OTHER:Lcom/dropbox/core/v2/paper/ImportFormat;

    goto :goto_1
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
    .line 49
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/paper/ImportFormat$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/paper/ImportFormat;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/paper/ImportFormat;Lcom/d/a/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 54
    sget-object v0, Lcom/dropbox/core/v2/paper/ImportFormat$1;->$SwitchMap$com$dropbox$core$v2$paper$ImportFormat:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/paper/ImportFormat;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 68
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 71
    :goto_0
    return-void

    .line 56
    :pswitch_0
    const-string/jumbo v0, "html"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :pswitch_1
    const-string/jumbo v0, "markdown"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :pswitch_2
    const-string/jumbo v0, "plain_text"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
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
    .line 49
    check-cast p1, Lcom/dropbox/core/v2/paper/ImportFormat;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/paper/ImportFormat$Serializer;->serialize(Lcom/dropbox/core/v2/paper/ImportFormat;Lcom/d/a/a/g;)V

    return-void
.end method
