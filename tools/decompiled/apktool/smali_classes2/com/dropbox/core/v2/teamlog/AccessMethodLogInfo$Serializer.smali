.class Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "AccessMethodLogInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 525
    new-instance v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 524
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 577
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 579
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 580
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    move v1, v2

    .line 587
    :goto_0
    if-nez v0, :cond_1

    .line 588
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 583
    :cond_0
    const/4 v1, 0x0

    .line 584
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 585
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 590
    :cond_1
    const-string/jumbo v3, "end_user"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 592
    const-string/jumbo v0, "end_user"

    invoke-static {v0, p1}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Serializer;->expectField(Ljava/lang/String;Lcom/d/a/a/k;)V

    .line 593
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SessionLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SessionLogInfo$Serializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/v2/teamlog/SessionLogInfo$Serializer;->deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/teamlog/SessionLogInfo;

    .line 594
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->endUser(Lcom/dropbox/core/v2/teamlog/SessionLogInfo;)Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    move-result-object v0

    .line 619
    :goto_1
    if-nez v1, :cond_2

    .line 620
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 621
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 623
    :cond_2
    return-object v0

    .line 596
    :cond_3
    const-string/jumbo v3, "sign_in_as"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 598
    sget-object v0, Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    move-result-object v0

    .line 599
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->signInAs(Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;)Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    move-result-object v0

    goto :goto_1

    .line 601
    :cond_4
    const-string/jumbo v3, "content_manager"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 603
    sget-object v0, Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    move-result-object v0

    .line 604
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->contentManager(Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;)Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    move-result-object v0

    goto :goto_1

    .line 606
    :cond_5
    const-string/jumbo v3, "admin_console"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 608
    sget-object v0, Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    move-result-object v0

    .line 609
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->adminConsole(Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;)Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    move-result-object v0

    goto :goto_1

    .line 611
    :cond_6
    const-string/jumbo v3, "api"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 613
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ApiSessionLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/ApiSessionLogInfo$Serializer;

    invoke-virtual {v0, p1, v2}, Lcom/dropbox/core/v2/teamlog/ApiSessionLogInfo$Serializer;->deserialize(Lcom/d/a/a/k;Z)Lcom/dropbox/core/v2/teamlog/ApiSessionLogInfo;

    move-result-object v0

    .line 614
    invoke-static {v0}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->api(Lcom/dropbox/core/v2/teamlog/ApiSessionLogInfo;)Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    move-result-object v0

    goto :goto_1

    .line 617
    :cond_7
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->OTHER:Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

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
    .line 524
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;Lcom/d/a/a/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 529
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$1;->$SwitchMap$com$dropbox$core$v2$teamlog$AccessMethodLogInfo$Tag:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->tag()Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Tag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 567
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 570
    :goto_0
    return-void

    .line 531
    :pswitch_0
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 532
    const-string/jumbo v0, "end_user"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 533
    const-string/jumbo v0, "end_user"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->a(Ljava/lang/String;)V

    .line 534
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SessionLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SessionLogInfo$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->access$000(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;)Lcom/dropbox/core/v2/teamlog/SessionLogInfo;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/teamlog/SessionLogInfo$Serializer;->serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V

    .line 535
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 539
    :pswitch_1
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 540
    const-string/jumbo v0, "sign_in_as"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 541
    sget-object v0, Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->access$100(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;)Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;Lcom/d/a/a/g;Z)V

    .line 542
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 546
    :pswitch_2
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 547
    const-string/jumbo v0, "content_manager"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 548
    sget-object v0, Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->access$200(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;)Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;Lcom/d/a/a/g;Z)V

    .line 549
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 553
    :pswitch_3
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 554
    const-string/jumbo v0, "admin_console"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 555
    sget-object v0, Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->access$300(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;)Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/WebSessionLogInfo;Lcom/d/a/a/g;Z)V

    .line 556
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 560
    :pswitch_4
    invoke-virtual {p2}, Lcom/d/a/a/g;->e()V

    .line 561
    const-string/jumbo v0, "api"

    invoke-virtual {p0, v0, p2}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Serializer;->writeTag(Ljava/lang/String;Lcom/d/a/a/g;)V

    .line 562
    sget-object v0, Lcom/dropbox/core/v2/teamlog/ApiSessionLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/ApiSessionLogInfo$Serializer;

    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;->access$400(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;)Lcom/dropbox/core/v2/teamlog/ApiSessionLogInfo;

    move-result-object v1

    invoke-virtual {v0, v1, p2, v2}, Lcom/dropbox/core/v2/teamlog/ApiSessionLogInfo$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/ApiSessionLogInfo;Lcom/d/a/a/g;Z)V

    .line 563
    invoke-virtual {p2}, Lcom/d/a/a/g;->f()V

    goto :goto_0

    .line 529
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
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
    .line 524
    check-cast p1, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/AccessMethodLogInfo;Lcom/d/a/a/g;)V

    return-void
.end method
