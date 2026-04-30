.class Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "RevokeDeviceSessionArg.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 336
    new-instance v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 335
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 373
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 375
    invoke-static {p1}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 376
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    move v1, v2

    .line 383
    :goto_0
    if-nez v0, :cond_1

    .line 384
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 379
    :cond_0
    const/4 v1, 0x0

    .line 380
    invoke-static {p1}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 381
    invoke-static {p1}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 386
    :cond_1
    const-string/jumbo v3, "web_session"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 388
    sget-object v0, Lcom/dropbox/core/v2/team/DeviceSessionArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/DeviceSessionArg$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/team/DeviceSessionArg$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/team/DeviceSessionArg;

    move-result-object v0

    .line 389
    invoke-static {v0}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->webSession(Lcom/dropbox/core/v2/team/DeviceSessionArg;)Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;

    move-result-object v0

    .line 404
    :goto_1
    if-nez v1, :cond_2

    .line 405
    invoke-static {p1}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 406
    invoke-static {p1}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 408
    :cond_2
    return-object v0

    .line 391
    :cond_3
    const-string/jumbo v3, "desktop_client"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 393
    sget-object v0, Lcom/dropbox/core/v2/team/RevokeDesktopClientArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/RevokeDesktopClientArg$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/team/RevokeDesktopClientArg$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;

    move-result-object v0

    .line 394
    invoke-static {v0}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->desktopClient(Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;)Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;

    move-result-object v0

    goto :goto_1

    .line 396
    :cond_4
    const-string/jumbo v3, "mobile_client"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 398
    sget-object v0, Lcom/dropbox/core/v2/team/DeviceSessionArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/DeviceSessionArg$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/team/DeviceSessionArg$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/team/DeviceSessionArg;

    move-result-object v0

    .line 399
    invoke-static {v0}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->mobileClient(Lcom/dropbox/core/v2/team/DeviceSessionArg;)Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;

    move-result-object v0

    goto :goto_1

    .line 402
    :cond_5
    new-instance v1, Lcom/d/a/a/j;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v1
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
    .line 335
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;Lcom/d/a/a/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 340
    sget-object v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$1;->$SwitchMap$com$dropbox$core$v2$team$RevokeDeviceSessionArg$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->tag()Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 363
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unrecognized tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->tag()Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :pswitch_0
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 343
    const-string/jumbo v0, "web_session"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 344
    sget-object v0, Lcom/dropbox/core/v2/team/DeviceSessionArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/DeviceSessionArg$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->access$000(Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;)Lcom/dropbox/core/v2/team/DeviceSessionArg;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/team/DeviceSessionArg$Serializer;->serialize(Lcom/dropbox/core/v2/team/DeviceSessionArg;Lcom/d/a/a/g;Z)V

    .line 345
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    .line 366
    :goto_0
    return-void

    .line 349
    :pswitch_1
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 350
    const-string/jumbo v0, "desktop_client"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 351
    sget-object v0, Lcom/dropbox/core/v2/team/RevokeDesktopClientArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/RevokeDesktopClientArg$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->access$100(Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;)Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/team/RevokeDesktopClientArg$Serializer;->serialize(Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;Lcom/d/a/a/g;Z)V

    .line 352
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 356
    :pswitch_2
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 357
    const-string/jumbo v0, "mobile_client"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 358
    sget-object v0, Lcom/dropbox/core/v2/team/DeviceSessionArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/DeviceSessionArg$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->access$200(Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;)Lcom/dropbox/core/v2/team/DeviceSessionArg;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/team/DeviceSessionArg$Serializer;->serialize(Lcom/dropbox/core/v2/team/DeviceSessionArg;Lcom/d/a/a/g;Z)V

    .line 359
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 340
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
    .line 335
    check-cast p1, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Serializer;->serialize(Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;Lcom/d/a/a/g;)V

    return-void
.end method
