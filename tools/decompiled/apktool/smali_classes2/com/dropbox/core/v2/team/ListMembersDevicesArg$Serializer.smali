.class Lcom/dropbox/core/v2/team/ListMembersDevicesArg$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "ListMembersDevicesArg.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/ListMembersDevicesArg;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/ListMembersDevicesArg$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 271
    new-instance v0, Lcom/dropbox/core/v2/team/ListMembersDevicesArg$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/ListMembersDevicesArg$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/ListMembersDevicesArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/ListMembersDevicesArg$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 270
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/team/ListMembersDevicesArg;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 296
    .line 297
    if-nez p2, :cond_7

    .line 298
    invoke-static {p1}, Lcom/dropbox/core/v2/team/ListMembersDevicesArg$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 299
    invoke-static {p1}, Lcom/dropbox/core/v2/team/ListMembersDevicesArg$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 301
    :goto_0
    if-nez v0, :cond_6

    .line 303
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 304
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 305
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 306
    :goto_1
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v5, Lcom/d/a/a/o;->f:Lcom/d/a/a/o;

    if-ne v0, v5, :cond_4

    .line 307
    invoke-virtual {p1}, Lcom/d/a/a/k;->d()Ljava/lang/String;

    move-result-object v0

    .line 308
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 309
    const-string/jumbo v5, "cursor"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 310
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v6, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v0

    move-object v0, v6

    :goto_2
    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    .line 324
    goto :goto_1

    .line 312
    :cond_0
    const-string/jumbo v5, "include_web_sessions"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 313
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    move-object v3, v4

    move-object v6, v2

    move-object v2, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_2

    .line 315
    :cond_1
    const-string/jumbo v5, "include_desktop_clients"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 316
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    move-object v2, v3

    move-object v3, v4

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2

    .line 318
    :cond_2
    const-string/jumbo v5, "include_mobile_clients"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 319
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    goto :goto_2

    .line 322
    :cond_3
    invoke-static {p1}, Lcom/dropbox/core/v2/team/ListMembersDevicesArg$Serializer;->skipValue(Lcom/d/a/a/k;)V

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    goto :goto_2

    .line 325
    :cond_4
    new-instance v0, Lcom/dropbox/core/v2/team/ListMembersDevicesArg;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/dropbox/core/v2/team/ListMembersDevicesArg;-><init>(Ljava/lang/String;ZZZ)V

    .line 330
    if-nez p2, :cond_5

    .line 331
    invoke-static {p1}, Lcom/dropbox/core/v2/team/ListMembersDevicesArg$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 333
    :cond_5
    return-object v0

    .line 328
    :cond_6
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

    :cond_7
    move-object v0, v4

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
    .line 270
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/ListMembersDevicesArg$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/team/ListMembersDevicesArg;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/ListMembersDevicesArg;Lcom/d/a/a/g;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 275
    if-nez p3, :cond_0

    .line 276
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 278
    :cond_0
    iget-object v0, p1, Lcom/dropbox/core/v2/team/ListMembersDevicesArg;->cursor:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 279
    const-string/jumbo v0, "cursor"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 280
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/ListMembersDevicesArg;->cursor:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 282
    :cond_1
    const-string/jumbo v0, "include_web_sessions"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 283
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-boolean v1, p1, Lcom/dropbox/core/v2/team/ListMembersDevicesArg;->includeWebSessions:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 284
    const-string/jumbo v0, "include_desktop_clients"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 285
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-boolean v1, p1, Lcom/dropbox/core/v2/team/ListMembersDevicesArg;->includeDesktopClients:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 286
    const-string/jumbo v0, "include_mobile_clients"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 287
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-boolean v1, p1, Lcom/dropbox/core/v2/team/ListMembersDevicesArg;->includeMobileClients:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 288
    if-nez p3, :cond_2

    .line 289
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 291
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
    .line 270
    check-cast p1, Lcom/dropbox/core/v2/team/ListMembersDevicesArg;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/team/ListMembersDevicesArg$Serializer;->serialize(Lcom/dropbox/core/v2/team/ListMembersDevicesArg;Lcom/d/a/a/g;Z)V

    return-void
.end method
