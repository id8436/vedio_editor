.class Lcom/dropbox/core/v2/teamlog/JoinTeamDetails$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "JoinTeamDetails.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/teamlog/JoinTeamDetails;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/teamlog/JoinTeamDetails$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 151
    new-instance v0, Lcom/dropbox/core/v2/teamlog/JoinTeamDetails$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/JoinTeamDetails$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/JoinTeamDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/JoinTeamDetails$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/JoinTeamDetails;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 172
    .line 173
    if-nez p2, :cond_9

    .line 174
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/JoinTeamDetails$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 175
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/JoinTeamDetails$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 177
    :goto_0
    if-nez v0, :cond_8

    move-object v2, v1

    move-object v3, v1

    .line 181
    :goto_1
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v4, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v0, v4, :cond_3

    .line 182
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 184
    const-string/jumbo v4, "linked_apps"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 185
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AppLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/AppLogInfo$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v5, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v5

    :goto_2
    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    .line 196
    goto :goto_1

    .line 187
    :cond_0
    const-string/jumbo v4, "linked_devices"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 188
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DeviceLogInfo$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v2, v3

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_2

    .line 190
    :cond_1
    const-string/jumbo v4, "linked_shared_folders"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 191
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FolderLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FolderLogInfo$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    .line 194
    :cond_2
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/JoinTeamDetails$Serializer;->skipValue(Lcom/d/a/a/k;)V

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    .line 197
    :cond_3
    if-nez v3, :cond_4

    .line 198
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"linked_apps\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_4
    if-nez v2, :cond_5

    .line 201
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"linked_devices\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_5
    if-nez v1, :cond_6

    .line 204
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"linked_shared_folders\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_6
    new-instance v0, Lcom/dropbox/core/v2/teamlog/JoinTeamDetails;

    invoke-direct {v0, v3, v2, v1}, Lcom/dropbox/core/v2/teamlog/JoinTeamDetails;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 211
    if-nez p2, :cond_7

    .line 212
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/JoinTeamDetails$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 214
    :cond_7
    return-object v0

    .line 209
    :cond_8
    new-instance v1, Lcom/d/a/a/j;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No subtype found that matches tag: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v1

    :cond_9
    move-object v0, v1

    goto/16 :goto_0
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
    .line 150
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/JoinTeamDetails$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/JoinTeamDetails;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/teamlog/JoinTeamDetails;Lcom/d/a/a/g;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 155
    if-nez p3, :cond_0

    .line 156
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 158
    :cond_0
    const-string/jumbo v0, "linked_apps"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 159
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AppLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/AppLogInfo$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/JoinTeamDetails;->linkedApps:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 160
    const-string/jumbo v0, "linked_devices"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 161
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DeviceLogInfo$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/JoinTeamDetails;->linkedDevices:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 162
    const-string/jumbo v0, "linked_shared_folders"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 163
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FolderLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FolderLogInfo$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/teamlog/JoinTeamDetails;->linkedSharedFolders:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 164
    if-nez p3, :cond_1

    .line 165
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 167
    :cond_1
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
    .line 150
    check-cast p1, Lcom/dropbox/core/v2/teamlog/JoinTeamDetails;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/teamlog/JoinTeamDetails$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/JoinTeamDetails;Lcom/d/a/a/g;Z)V

    return-void
.end method
