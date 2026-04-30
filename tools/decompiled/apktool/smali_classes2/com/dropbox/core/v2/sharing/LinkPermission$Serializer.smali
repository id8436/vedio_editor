.class Lcom/dropbox/core/v2/sharing/LinkPermission$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "LinkPermission.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/LinkPermission;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/LinkPermission$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 135
    new-instance v0, Lcom/dropbox/core/v2/sharing/LinkPermission$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/LinkPermission$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/LinkPermission$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/LinkPermission$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/sharing/LinkPermission;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 158
    .line 159
    if-nez p2, :cond_8

    .line 160
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/LinkPermission$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 161
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/LinkPermission$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 163
    :goto_0
    if-nez v0, :cond_7

    move-object v2, v1

    move-object v3, v1

    .line 167
    :goto_1
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v4, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v0, v4, :cond_3

    .line 168
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 170
    const-string/jumbo v4, "action"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 171
    sget-object v0, Lcom/dropbox/core/v2/sharing/LinkAction$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/LinkAction$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/sharing/LinkAction$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/sharing/LinkAction;

    move-result-object v0

    move-object v5, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v5

    :goto_2
    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    .line 182
    goto :goto_1

    .line 173
    :cond_0
    const-string/jumbo v4, "allow"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 174
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    move-object v2, v3

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_2

    .line 176
    :cond_1
    const-string/jumbo v4, "reason"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 177
    sget-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    .line 180
    :cond_2
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/LinkPermission$Serializer;->skipValue(Lcom/d/a/a/k;)V

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    .line 183
    :cond_3
    if-nez v3, :cond_4

    .line 184
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"action\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_4
    if-nez v2, :cond_5

    .line 187
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field \"allow\" missing."

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_5
    new-instance v0, Lcom/dropbox/core/v2/sharing/LinkPermission;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {v0, v3, v2, v1}, Lcom/dropbox/core/v2/sharing/LinkPermission;-><init>(Lcom/dropbox/core/v2/sharing/LinkAction;ZLcom/dropbox/core/v2/sharing/PermissionDeniedReason;)V

    .line 194
    if-nez p2, :cond_6

    .line 195
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/LinkPermission$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 197
    :cond_6
    return-object v0

    .line 192
    :cond_7
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

    :cond_8
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
    .line 134
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/LinkPermission$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/sharing/LinkPermission;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/LinkPermission;Lcom/d/a/a/g;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 139
    if-nez p3, :cond_0

    .line 140
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 142
    :cond_0
    const-string/jumbo v0, "action"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 143
    sget-object v0, Lcom/dropbox/core/v2/sharing/LinkAction$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/LinkAction$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/LinkPermission;->action:Lcom/dropbox/core/v2/sharing/LinkAction;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/LinkAction$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/LinkAction;Lcom/d/a/a/g;)V

    .line 144
    const-string/jumbo v0, "allow"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 145
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-boolean v1, p1, Lcom/dropbox/core/v2/sharing/LinkPermission;->allow:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 146
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/LinkPermission;->reason:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    if-eqz v0, :cond_1

    .line 147
    const-string/jumbo v0, "reason"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 148
    sget-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/LinkPermission;->reason:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 150
    :cond_1
    if-nez p3, :cond_2

    .line 151
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 153
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
    .line 134
    check-cast p1, Lcom/dropbox/core/v2/sharing/LinkPermission;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/LinkPermission$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/LinkPermission;Lcom/d/a/a/g;Z)V

    return-void
.end method
