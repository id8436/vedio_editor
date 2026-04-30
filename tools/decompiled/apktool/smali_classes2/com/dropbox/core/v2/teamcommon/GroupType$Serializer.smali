.class public Lcom/dropbox/core/v2/teamcommon/GroupType$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "GroupType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/teamcommon/GroupType;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/teamcommon/GroupType$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/dropbox/core/v2/teamcommon/GroupType$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamcommon/GroupType$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teamcommon/GroupType$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamcommon/GroupType$Serializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/teamcommon/GroupType;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 69
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 70
    const/4 v1, 0x1

    .line 71
    invoke-static {p1}, Lcom/dropbox/core/v2/teamcommon/GroupType$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 79
    :goto_0
    if-nez v0, :cond_1

    .line 80
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    const/4 v1, 0x0

    .line 76
    invoke-static {p1}, Lcom/dropbox/core/v2/teamcommon/GroupType$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 77
    invoke-static {p1}, Lcom/dropbox/core/v2/teamcommon/GroupType$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 82
    :cond_1
    const-string/jumbo v2, "team"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 83
    sget-object v0, Lcom/dropbox/core/v2/teamcommon/GroupType;->TEAM:Lcom/dropbox/core/v2/teamcommon/GroupType;

    .line 91
    :goto_1
    if-nez v1, :cond_2

    .line 92
    invoke-static {p1}, Lcom/dropbox/core/v2/teamcommon/GroupType$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 93
    invoke-static {p1}, Lcom/dropbox/core/v2/teamcommon/GroupType$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 95
    :cond_2
    return-object v0

    .line 85
    :cond_3
    const-string/jumbo v2, "user_managed"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 86
    sget-object v0, Lcom/dropbox/core/v2/teamcommon/GroupType;->USER_MANAGED:Lcom/dropbox/core/v2/teamcommon/GroupType;

    goto :goto_1

    .line 89
    :cond_4
    sget-object v0, Lcom/dropbox/core/v2/teamcommon/GroupType;->OTHER:Lcom/dropbox/core/v2/teamcommon/GroupType;

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
    .line 44
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/teamcommon/GroupType$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/teamcommon/GroupType;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/teamcommon/GroupType;Lcom/d/a/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 49
    sget-object v0, Lcom/dropbox/core/v2/teamcommon/GroupType$1;->$SwitchMap$com$dropbox$core$v2$teamcommon$GroupType:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/teamcommon/GroupType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 59
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 62
    :goto_0
    return-void

    .line 51
    :pswitch_0
    const-string/jumbo v0, "team"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :pswitch_1
    const-string/jumbo v0, "user_managed"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 49
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
    .line 44
    check-cast p1, Lcom/dropbox/core/v2/teamcommon/GroupType;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teamcommon/GroupType$Serializer;->serialize(Lcom/dropbox/core/v2/teamcommon/GroupType;Lcom/d/a/a/g;)V

    return-void
.end method
