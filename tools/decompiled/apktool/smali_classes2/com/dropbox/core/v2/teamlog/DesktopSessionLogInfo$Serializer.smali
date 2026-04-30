.class Lcom/dropbox/core/v2/teamlog/DesktopSessionLogInfo$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "DesktopSessionLogInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/teamlog/DesktopSessionLogInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/teamlog/DesktopSessionLogInfo$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    new-instance v0, Lcom/dropbox/core/v2/teamlog/DesktopSessionLogInfo$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/DesktopSessionLogInfo$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/DesktopSessionLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DesktopSessionLogInfo$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/DesktopSessionLogInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 117
    .line 118
    if-nez p2, :cond_5

    .line 119
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/DesktopSessionLogInfo$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 120
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/DesktopSessionLogInfo$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v1

    .line 121
    const-string/jumbo v2, "desktop"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 125
    :cond_0
    :goto_0
    if-nez v1, :cond_4

    .line 127
    :goto_1
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v1

    sget-object v2, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v1, v2, :cond_2

    .line 128
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v1

    .line 129
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 130
    const-string/jumbo v2, "session_id"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 131
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    .line 134
    :cond_1
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/DesktopSessionLogInfo$Serializer;->skipValue(Lcom/d/a/a/k;)V

    goto :goto_1

    .line 137
    :cond_2
    new-instance v1, Lcom/dropbox/core/v2/teamlog/DesktopSessionLogInfo;

    invoke-direct {v1, v0}, Lcom/dropbox/core/v2/teamlog/DesktopSessionLogInfo;-><init>(Ljava/lang/String;)V

    .line 142
    if-nez p2, :cond_3

    .line 143
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/DesktopSessionLogInfo$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 145
    :cond_3
    return-object v1

    .line 140
    :cond_4
    new-instance v0, Lcom/d/a/a/j;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No subtype found that matches tag: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    :cond_5
    move-object v1, v0

    goto :goto_0
.end method

.method public bridge synthetic deserialize(Lcom/d/a/a/k;Z)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 96
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/DesktopSessionLogInfo$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/DesktopSessionLogInfo;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/teamlog/DesktopSessionLogInfo;Lcom/d/a/a/g;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 101
    if-nez p3, :cond_0

    .line 102
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 104
    :cond_0
    const-string/jumbo v0, "desktop"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/DesktopSessionLogInfo$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 105
    iget-object v0, p1, Lcom/dropbox/core/v2/teamlog/DesktopSessionLogInfo;->sessionId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 106
    const-string/jumbo v0, "session_id"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 107
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/DesktopSessionLogInfo;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 109
    :cond_1
    if-nez p3, :cond_2

    .line 110
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 112
    :cond_2
    return-void
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/d/a/a/g;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 96
    check-cast p1, Lcom/dropbox/core/v2/teamlog/DesktopSessionLogInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/teamlog/DesktopSessionLogInfo$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/DesktopSessionLogInfo;Lcom/d/a/a/g;Z)V

    return-void
.end method
