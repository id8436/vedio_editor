.class public Lcom/dropbox/core/v2/teamcommon/GroupManagementType$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "GroupManagementType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/teamcommon/GroupManagementType;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/teamcommon/GroupManagementType$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/dropbox/core/v2/teamcommon/GroupManagementType$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamcommon/GroupManagementType$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teamcommon/GroupManagementType$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamcommon/GroupManagementType$Serializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/teamcommon/GroupManagementType;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 76
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 77
    const/4 v1, 0x1

    .line 78
    invoke-static {p1}, Lcom/dropbox/core/v2/teamcommon/GroupManagementType$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 86
    :goto_0
    if-nez v0, :cond_1

    .line 87
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    const/4 v1, 0x0

    .line 83
    invoke-static {p1}, Lcom/dropbox/core/v2/teamcommon/GroupManagementType$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 84
    invoke-static {p1}, Lcom/dropbox/core/v2/teamcommon/GroupManagementType$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 89
    :cond_1
    const-string/jumbo v2, "user_managed"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 90
    sget-object v0, Lcom/dropbox/core/v2/teamcommon/GroupManagementType;->USER_MANAGED:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    .line 101
    :goto_1
    if-nez v1, :cond_2

    .line 102
    invoke-static {p1}, Lcom/dropbox/core/v2/teamcommon/GroupManagementType$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 103
    invoke-static {p1}, Lcom/dropbox/core/v2/teamcommon/GroupManagementType$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 105
    :cond_2
    return-object v0

    .line 92
    :cond_3
    const-string/jumbo v2, "company_managed"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 93
    sget-object v0, Lcom/dropbox/core/v2/teamcommon/GroupManagementType;->COMPANY_MANAGED:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    goto :goto_1

    .line 95
    :cond_4
    const-string/jumbo v2, "system_managed"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 96
    sget-object v0, Lcom/dropbox/core/v2/teamcommon/GroupManagementType;->SYSTEM_MANAGED:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    goto :goto_1

    .line 99
    :cond_5
    sget-object v0, Lcom/dropbox/core/v2/teamcommon/GroupManagementType;->OTHER:Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

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
    .line 47
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/teamcommon/GroupManagementType$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/teamcommon/GroupManagementType;Lcom/d/a/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 52
    sget-object v0, Lcom/dropbox/core/v2/teamcommon/GroupManagementType$1;->$SwitchMap$com$dropbox$core$v2$teamcommon$GroupManagementType:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/teamcommon/GroupManagementType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 66
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 69
    :goto_0
    return-void

    .line 54
    :pswitch_0
    const-string/jumbo v0, "user_managed"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :pswitch_1
    const-string/jumbo v0, "company_managed"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :pswitch_2
    const-string/jumbo v0, "system_managed"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 52
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
    .line 47
    check-cast p1, Lcom/dropbox/core/v2/teamcommon/GroupManagementType;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teamcommon/GroupManagementType$Serializer;->serialize(Lcom/dropbox/core/v2/teamcommon/GroupManagementType;Lcom/d/a/a/g;)V

    return-void
.end method
