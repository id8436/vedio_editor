.class Lcom/dropbox/core/v2/teamlog/SharingFolderJoinPolicy$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SharingFolderJoinPolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/teamlog/SharingFolderJoinPolicy;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/teamlog/SharingFolderJoinPolicy$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/dropbox/core/v2/teamlog/SharingFolderJoinPolicy$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/SharingFolderJoinPolicy$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/SharingFolderJoinPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharingFolderJoinPolicy$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/teamlog/SharingFolderJoinPolicy;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 63
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 64
    const/4 v1, 0x1

    .line 65
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/SharingFolderJoinPolicy$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 73
    :goto_0
    if-nez v0, :cond_1

    .line 74
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    const/4 v1, 0x0

    .line 70
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/SharingFolderJoinPolicy$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 71
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/SharingFolderJoinPolicy$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 76
    :cond_1
    const-string/jumbo v2, "from_anyone"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 77
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharingFolderJoinPolicy;->FROM_ANYONE:Lcom/dropbox/core/v2/teamlog/SharingFolderJoinPolicy;

    .line 85
    :goto_1
    if-nez v1, :cond_2

    .line 86
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/SharingFolderJoinPolicy$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 87
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/SharingFolderJoinPolicy$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 89
    :cond_2
    return-object v0

    .line 79
    :cond_3
    const-string/jumbo v2, "from_team_only"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 80
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharingFolderJoinPolicy;->FROM_TEAM_ONLY:Lcom/dropbox/core/v2/teamlog/SharingFolderJoinPolicy;

    goto :goto_1

    .line 83
    :cond_4
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharingFolderJoinPolicy;->OTHER:Lcom/dropbox/core/v2/teamlog/SharingFolderJoinPolicy;

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
    .line 38
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/teamlog/SharingFolderJoinPolicy$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/teamlog/SharingFolderJoinPolicy;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/teamlog/SharingFolderJoinPolicy;Lcom/d/a/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 43
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharingFolderJoinPolicy$1;->$SwitchMap$com$dropbox$core$v2$teamlog$SharingFolderJoinPolicy:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/teamlog/SharingFolderJoinPolicy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 53
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 56
    :goto_0
    return-void

    .line 45
    :pswitch_0
    const-string/jumbo v0, "from_anyone"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :pswitch_1
    const-string/jumbo v0, "from_team_only"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 43
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
    .line 38
    check-cast p1, Lcom/dropbox/core/v2/teamlog/SharingFolderJoinPolicy;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/SharingFolderJoinPolicy$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/SharingFolderJoinPolicy;Lcom/d/a/a/g;)V

    return-void
.end method
