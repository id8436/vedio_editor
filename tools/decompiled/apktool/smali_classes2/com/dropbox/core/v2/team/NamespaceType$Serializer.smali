.class Lcom/dropbox/core/v2/team/NamespaceType$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "NamespaceType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/NamespaceType;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/NamespaceType$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/dropbox/core/v2/team/NamespaceType$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/NamespaceType$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/NamespaceType$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/NamespaceType$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/team/NamespaceType;
    .locals 3
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
    invoke-static {p1}, Lcom/dropbox/core/v2/team/NamespaceType$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

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
    invoke-static {p1}, Lcom/dropbox/core/v2/team/NamespaceType$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 89
    invoke-static {p1}, Lcom/dropbox/core/v2/team/NamespaceType$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 94
    :cond_1
    const-string/jumbo v2, "app_folder"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 95
    sget-object v0, Lcom/dropbox/core/v2/team/NamespaceType;->APP_FOLDER:Lcom/dropbox/core/v2/team/NamespaceType;

    .line 109
    :goto_1
    if-nez v1, :cond_2

    .line 110
    invoke-static {p1}, Lcom/dropbox/core/v2/team/NamespaceType$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 111
    invoke-static {p1}, Lcom/dropbox/core/v2/team/NamespaceType$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 113
    :cond_2
    return-object v0

    .line 97
    :cond_3
    const-string/jumbo v2, "shared_folder"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 98
    sget-object v0, Lcom/dropbox/core/v2/team/NamespaceType;->SHARED_FOLDER:Lcom/dropbox/core/v2/team/NamespaceType;

    goto :goto_1

    .line 100
    :cond_4
    const-string/jumbo v2, "team_folder"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 101
    sget-object v0, Lcom/dropbox/core/v2/team/NamespaceType;->TEAM_FOLDER:Lcom/dropbox/core/v2/team/NamespaceType;

    goto :goto_1

    .line 103
    :cond_5
    const-string/jumbo v2, "team_member_folder"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 104
    sget-object v0, Lcom/dropbox/core/v2/team/NamespaceType;->TEAM_MEMBER_FOLDER:Lcom/dropbox/core/v2/team/NamespaceType;

    goto :goto_1

    .line 107
    :cond_6
    sget-object v0, Lcom/dropbox/core/v2/team/NamespaceType;->OTHER:Lcom/dropbox/core/v2/team/NamespaceType;

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
    .line 48
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/NamespaceType$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/team/NamespaceType;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/NamespaceType;Lcom/d/a/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 53
    sget-object v0, Lcom/dropbox/core/v2/team/NamespaceType$1;->$SwitchMap$com$dropbox$core$v2$team$NamespaceType:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/NamespaceType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 71
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 74
    :goto_0
    return-void

    .line 55
    :pswitch_0
    const-string/jumbo v0, "app_folder"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :pswitch_1
    const-string/jumbo v0, "shared_folder"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :pswitch_2
    const-string/jumbo v0, "team_folder"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :pswitch_3
    const-string/jumbo v0, "team_member_folder"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
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
    .line 48
    check-cast p1, Lcom/dropbox/core/v2/team/NamespaceType;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/NamespaceType$Serializer;->serialize(Lcom/dropbox/core/v2/team/NamespaceType;Lcom/d/a/a/g;)V

    return-void
.end method
