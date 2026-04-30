.class Lcom/dropbox/core/v2/team/DesktopPlatform$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "DesktopPlatform.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/DesktopPlatform;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/DesktopPlatform$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/dropbox/core/v2/team/DesktopPlatform$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/DesktopPlatform$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/DesktopPlatform$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/DesktopPlatform$Serializer;

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
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/team/DesktopPlatform;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 73
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 74
    const/4 v1, 0x1

    .line 75
    invoke-static {p1}, Lcom/dropbox/core/v2/team/DesktopPlatform$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 83
    :goto_0
    if-nez v0, :cond_1

    .line 84
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    const/4 v1, 0x0

    .line 80
    invoke-static {p1}, Lcom/dropbox/core/v2/team/DesktopPlatform$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 81
    invoke-static {p1}, Lcom/dropbox/core/v2/team/DesktopPlatform$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 86
    :cond_1
    const-string/jumbo v2, "windows"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 87
    sget-object v0, Lcom/dropbox/core/v2/team/DesktopPlatform;->WINDOWS:Lcom/dropbox/core/v2/team/DesktopPlatform;

    .line 98
    :goto_1
    if-nez v1, :cond_2

    .line 99
    invoke-static {p1}, Lcom/dropbox/core/v2/team/DesktopPlatform$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 100
    invoke-static {p1}, Lcom/dropbox/core/v2/team/DesktopPlatform$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 102
    :cond_2
    return-object v0

    .line 89
    :cond_3
    const-string/jumbo v2, "mac"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 90
    sget-object v0, Lcom/dropbox/core/v2/team/DesktopPlatform;->MAC:Lcom/dropbox/core/v2/team/DesktopPlatform;

    goto :goto_1

    .line 92
    :cond_4
    const-string/jumbo v2, "linux"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 93
    sget-object v0, Lcom/dropbox/core/v2/team/DesktopPlatform;->LINUX:Lcom/dropbox/core/v2/team/DesktopPlatform;

    goto :goto_1

    .line 96
    :cond_5
    sget-object v0, Lcom/dropbox/core/v2/team/DesktopPlatform;->OTHER:Lcom/dropbox/core/v2/team/DesktopPlatform;

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
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/DesktopPlatform$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/team/DesktopPlatform;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/DesktopPlatform;Lcom/d/a/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 49
    sget-object v0, Lcom/dropbox/core/v2/team/DesktopPlatform$1;->$SwitchMap$com$dropbox$core$v2$team$DesktopPlatform:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/DesktopPlatform;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 63
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 66
    :goto_0
    return-void

    .line 51
    :pswitch_0
    const-string/jumbo v0, "windows"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :pswitch_1
    const-string/jumbo v0, "mac"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :pswitch_2
    const-string/jumbo v0, "linux"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 49
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
    .line 44
    check-cast p1, Lcom/dropbox/core/v2/team/DesktopPlatform;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/DesktopPlatform$Serializer;->serialize(Lcom/dropbox/core/v2/team/DesktopPlatform;Lcom/d/a/a/g;)V

    return-void
.end method
