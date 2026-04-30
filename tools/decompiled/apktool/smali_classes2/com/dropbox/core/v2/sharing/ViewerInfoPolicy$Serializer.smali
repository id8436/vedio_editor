.class Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "ViewerInfoPolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 65
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 66
    const/4 v1, 0x1

    .line 67
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 75
    :goto_0
    if-nez v0, :cond_1

    .line 76
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    const/4 v1, 0x0

    .line 72
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 73
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 78
    :cond_1
    const-string/jumbo v2, "enabled"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 79
    sget-object v0, Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;->ENABLED:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    .line 87
    :goto_1
    if-nez v1, :cond_2

    .line 88
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 89
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 91
    :cond_2
    return-object v0

    .line 81
    :cond_3
    const-string/jumbo v2, "disabled"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 82
    sget-object v0, Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;->DISABLED:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    goto :goto_1

    .line 85
    :cond_4
    sget-object v0, Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;->OTHER:Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

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
    .line 40
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;Lcom/d/a/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 45
    sget-object v0, Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy$1;->$SwitchMap$com$dropbox$core$v2$sharing$ViewerInfoPolicy:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 55
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 58
    :goto_0
    return-void

    .line 47
    :pswitch_0
    const-string/jumbo v0, "enabled"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :pswitch_1
    const-string/jumbo v0, "disabled"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 45
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
    .line 40
    check-cast p1, Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/ViewerInfoPolicy;Lcom/d/a/a/g;)V

    return-void
.end method
