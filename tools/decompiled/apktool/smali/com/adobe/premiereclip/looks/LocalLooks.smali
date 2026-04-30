.class public Lcom/adobe/premiereclip/looks/LocalLooks;
.super Ljava/lang/Object;
.source "LocalLooks.java"


# static fields
.field private static isInit:Z

.field private static final looksList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/looks/ClipLook;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/adobe/premiereclip/looks/LocalLooks;->looksList:Ljava/util/ArrayList;

    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lcom/adobe/premiereclip/looks/LocalLooks;->isInit:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClipLook(Ljava/lang/String;)Lcom/adobe/premiereclip/looks/BaseLook;
    .locals 3

    .prologue
    .line 75
    sget-object v0, Lcom/adobe/premiereclip/looks/LocalLooks;->looksList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/looks/BaseLook;

    .line 76
    invoke-virtual {v0}, Lcom/adobe/premiereclip/looks/BaseLook;->getLookId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getClipLooks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/premiereclip/looks/ClipLook;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    sget-object v0, Lcom/adobe/premiereclip/looks/LocalLooks;->looksList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getIndexOfLookFromId(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 101
    sget-object v0, Lcom/adobe/premiereclip/looks/LocalLooks;->looksList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/looks/ClipLook;

    .line 102
    invoke-virtual {v0}, Lcom/adobe/premiereclip/looks/ClipLook;->getLookId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    sget-object v1, Lcom/adobe/premiereclip/looks/LocalLooks;->looksList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 106
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getLookFromLookName(Ljava/lang/String;)Lcom/adobe/premiereclip/looks/ClipLook;
    .locals 3

    .prologue
    .line 92
    sget-object v0, Lcom/adobe/premiereclip/looks/LocalLooks;->looksList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/looks/ClipLook;

    .line 93
    invoke-virtual {v0}, Lcom/adobe/premiereclip/looks/ClipLook;->getLookName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static init()V
    .locals 7

    .prologue
    const v6, 0x7f0201f6

    .line 38
    sget-boolean v0, Lcom/adobe/premiereclip/looks/LocalLooks;->isInit:Z

    if-nez v0, :cond_0

    .line 39
    sget-object v0, Lcom/adobe/premiereclip/looks/LocalLooks;->looksList:Ljava/util/ArrayList;

    new-instance v1, Lcom/adobe/premiereclip/looks/ClipLook;

    const-string/jumbo v2, "0"

    const-string/jumbo v3, "Normal"

    const v4, 0x7f0201fe

    const/4 v5, -0x1

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/adobe/premiereclip/looks/ClipLook;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Lcom/adobe/premiereclip/looks/LocalLooks;->looksList:Ljava/util/ArrayList;

    new-instance v1, Lcom/adobe/premiereclip/looks/ClipLook;

    const-string/jumbo v2, "1"

    const-string/jumbo v3, "6am"

    const v4, 0x7f0201eb

    const v5, 0x7f090001

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/adobe/premiereclip/looks/ClipLook;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lcom/adobe/premiereclip/looks/LocalLooks;->looksList:Ljava/util/ArrayList;

    new-instance v1, Lcom/adobe/premiereclip/looks/ClipLook;

    const-string/jumbo v2, "2"

    const-string/jumbo v3, "Aged"

    const v4, 0x7f0201ec

    const/high16 v5, 0x7f090000

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/adobe/premiereclip/looks/ClipLook;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Lcom/adobe/premiereclip/looks/LocalLooks;->looksList:Ljava/util/ArrayList;

    new-instance v1, Lcom/adobe/premiereclip/looks/ClipLook;

    const-string/jumbo v2, "3"

    const-string/jumbo v3, "Burke"

    const v4, 0x7f0201ee

    const v5, 0x7f090006

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/adobe/premiereclip/looks/ClipLook;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Lcom/adobe/premiereclip/looks/LocalLooks;->looksList:Ljava/util/ArrayList;

    new-instance v1, Lcom/adobe/premiereclip/looks/ClipLook;

    const-string/jumbo v2, "4"

    const-string/jumbo v3, "Cave"

    const v4, 0x7f0201ef

    const v5, 0x7f090007

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/adobe/premiereclip/looks/ClipLook;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lcom/adobe/premiereclip/looks/LocalLooks;->looksList:Ljava/util/ArrayList;

    new-instance v1, Lcom/adobe/premiereclip/looks/ClipLook;

    const-string/jumbo v2, "5"

    const-string/jumbo v3, "Cinema"

    const v4, 0x7f0201f0

    const v5, 0x7f090008

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/adobe/premiereclip/looks/ClipLook;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lcom/adobe/premiereclip/looks/LocalLooks;->looksList:Ljava/util/ArrayList;

    new-instance v1, Lcom/adobe/premiereclip/looks/ClipLook;

    const-string/jumbo v2, "6"

    const-string/jumbo v3, "Cirrus"

    const v4, 0x7f0201f1

    const v5, 0x7f090009

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/adobe/premiereclip/looks/ClipLook;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Lcom/adobe/premiereclip/looks/LocalLooks;->looksList:Ljava/util/ArrayList;

    new-instance v1, Lcom/adobe/premiereclip/looks/ClipLook;

    const-string/jumbo v2, "7"

    const-string/jumbo v3, "Dreams"

    const v4, 0x7f0201f3

    const v5, 0x7f09000c

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/adobe/premiereclip/looks/ClipLook;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lcom/adobe/premiereclip/looks/LocalLooks;->looksList:Ljava/util/ArrayList;

    new-instance v1, Lcom/adobe/premiereclip/looks/ClipLook;

    const-string/jumbo v2, "10"

    const-string/jumbo v3, "Fashion"

    const v4, 0x7f09000f

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/adobe/premiereclip/looks/ClipLook;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lcom/adobe/premiereclip/looks/LocalLooks;->looksList:Ljava/util/ArrayList;

    new-instance v1, Lcom/adobe/premiereclip/looks/ClipLook;

    const-string/jumbo v2, "11"

    const-string/jumbo v3, "Film"

    const v4, 0x7f090010

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/adobe/premiereclip/looks/ClipLook;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lcom/adobe/premiereclip/looks/LocalLooks;->looksList:Ljava/util/ArrayList;

    new-instance v1, Lcom/adobe/premiereclip/looks/ClipLook;

    const-string/jumbo v2, "12"

    const-string/jumbo v3, "Glacier"

    const v4, 0x7f0201f7

    const v5, 0x7f090012

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/adobe/premiereclip/looks/ClipLook;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lcom/adobe/premiereclip/looks/LocalLooks;->looksList:Ljava/util/ArrayList;

    new-instance v1, Lcom/adobe/premiereclip/looks/ClipLook;

    const-string/jumbo v2, "13"

    const-string/jumbo v3, "Glory"

    const v4, 0x7f0201f8

    const v5, 0x7f090013

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/adobe/premiereclip/looks/ClipLook;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lcom/adobe/premiereclip/looks/LocalLooks;->looksList:Ljava/util/ArrayList;

    new-instance v1, Lcom/adobe/premiereclip/looks/ClipLook;

    const-string/jumbo v2, "14"

    const-string/jumbo v3, "Gold"

    const v4, 0x7f0201f9

    const v5, 0x7f090014

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/adobe/premiereclip/looks/ClipLook;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lcom/adobe/premiereclip/looks/LocalLooks;->looksList:Ljava/util/ArrayList;

    new-instance v1, Lcom/adobe/premiereclip/looks/ClipLook;

    const-string/jumbo v2, "15"

    const-string/jumbo v3, "Jewel"

    const v4, 0x7f0201fa

    const v5, 0x7f090020

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/adobe/premiereclip/looks/ClipLook;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lcom/adobe/premiereclip/looks/LocalLooks;->looksList:Ljava/util/ArrayList;

    new-instance v1, Lcom/adobe/premiereclip/looks/ClipLook;

    const-string/jumbo v2, "16"

    const-string/jumbo v3, "Linden"

    const v4, 0x7f0201fb

    const v5, 0x7f090022

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/adobe/premiereclip/looks/ClipLook;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Lcom/adobe/premiereclip/looks/LocalLooks;->looksList:Ljava/util/ArrayList;

    new-instance v1, Lcom/adobe/premiereclip/looks/ClipLook;

    const-string/jumbo v2, "17"

    const-string/jumbo v3, "Marshall"

    const v4, 0x7f0201fc

    const v5, 0x7f090024

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/adobe/premiereclip/looks/ClipLook;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lcom/adobe/premiereclip/looks/LocalLooks;->looksList:Ljava/util/ArrayList;

    new-instance v1, Lcom/adobe/premiereclip/looks/ClipLook;

    const-string/jumbo v2, "18"

    const-string/jumbo v3, "Noir"

    const v4, 0x7f0201fd

    const v5, 0x7f090025

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/adobe/premiereclip/looks/ClipLook;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lcom/adobe/premiereclip/looks/LocalLooks;->looksList:Ljava/util/ArrayList;

    new-instance v1, Lcom/adobe/premiereclip/looks/ClipLook;

    const-string/jumbo v2, "19"

    const-string/jumbo v3, "Notch"

    const v4, 0x7f0201ff

    const v5, 0x7f090026

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/adobe/premiereclip/looks/ClipLook;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lcom/adobe/premiereclip/looks/LocalLooks;->looksList:Ljava/util/ArrayList;

    new-instance v1, Lcom/adobe/premiereclip/looks/ClipLook;

    const-string/jumbo v2, "20"

    const-string/jumbo v3, "Pacific"

    const v4, 0x7f020200

    const v5, 0x7f090027

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/adobe/premiereclip/looks/ClipLook;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Lcom/adobe/premiereclip/looks/LocalLooks;->looksList:Ljava/util/ArrayList;

    new-instance v1, Lcom/adobe/premiereclip/looks/ClipLook;

    const-string/jumbo v2, "21"

    const-string/jumbo v3, "Sunrise"

    const v4, 0x7f020208

    const v5, 0x7f090032

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/adobe/premiereclip/looks/ClipLook;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Lcom/adobe/premiereclip/looks/LocalLooks;->looksList:Ljava/util/ArrayList;

    new-instance v1, Lcom/adobe/premiereclip/looks/ClipLook;

    const-string/jumbo v2, "22"

    const-string/jumbo v3, "Classic"

    const v4, 0x7f0201f2

    const v5, 0x7f09000a

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/adobe/premiereclip/looks/ClipLook;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Lcom/adobe/premiereclip/looks/LocalLooks;->looksList:Ljava/util/ArrayList;

    new-instance v1, Lcom/adobe/premiereclip/looks/ClipLook;

    const-string/jumbo v2, "23"

    const-string/jumbo v3, "Duo"

    const v4, 0x7f0201f4

    const v5, 0x7f09000d

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/adobe/premiereclip/looks/ClipLook;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Lcom/adobe/premiereclip/looks/LocalLooks;->looksList:Ljava/util/ArrayList;

    new-instance v1, Lcom/adobe/premiereclip/looks/ClipLook;

    const-string/jumbo v2, "24"

    const-string/jumbo v3, "Punch"

    const v4, 0x7f020202

    const v5, 0x7f09002b

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/adobe/premiereclip/looks/ClipLook;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lcom/adobe/premiereclip/looks/LocalLooks;->looksList:Ljava/util/ArrayList;

    new-instance v1, Lcom/adobe/premiereclip/looks/ClipLook;

    const-string/jumbo v2, "25"

    const-string/jumbo v3, "Retro"

    const v4, 0x7f020203

    const v5, 0x7f09002c

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/adobe/premiereclip/looks/ClipLook;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v0, Lcom/adobe/premiereclip/looks/LocalLooks;->looksList:Ljava/util/ArrayList;

    new-instance v1, Lcom/adobe/premiereclip/looks/ClipLook;

    const-string/jumbo v2, "26"

    const-string/jumbo v3, "Rush"

    const v4, 0x7f020204

    const v5, 0x7f09002d

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/adobe/premiereclip/looks/ClipLook;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v0, Lcom/adobe/premiereclip/looks/LocalLooks;->looksList:Ljava/util/ArrayList;

    new-instance v1, Lcom/adobe/premiereclip/looks/ClipLook;

    const-string/jumbo v2, "27"

    const-string/jumbo v3, "Silk"

    const v4, 0x7f020205

    const v5, 0x7f09002e

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/adobe/premiereclip/looks/ClipLook;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v0, Lcom/adobe/premiereclip/looks/LocalLooks;->looksList:Ljava/util/ArrayList;

    new-instance v1, Lcom/adobe/premiereclip/looks/ClipLook;

    const-string/jumbo v2, "28"

    const-string/jumbo v3, "Soul"

    const v4, 0x7f020206

    const v5, 0x7f09002f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/adobe/premiereclip/looks/ClipLook;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v0, Lcom/adobe/premiereclip/looks/LocalLooks;->looksList:Ljava/util/ArrayList;

    new-instance v1, Lcom/adobe/premiereclip/looks/ClipLook;

    const-string/jumbo v2, "29"

    const-string/jumbo v3, "Steel"

    const v4, 0x7f020207

    const v5, 0x7f090030

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/adobe/premiereclip/looks/ClipLook;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v0, Lcom/adobe/premiereclip/looks/LocalLooks;->looksList:Ljava/util/ArrayList;

    new-instance v1, Lcom/adobe/premiereclip/looks/ClipLook;

    const-string/jumbo v2, "30"

    const-string/jumbo v3, "Vibrant"

    const v4, 0x7f020209

    const v5, 0x7f090034

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/adobe/premiereclip/looks/ClipLook;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v0, Lcom/adobe/premiereclip/looks/LocalLooks;->looksList:Ljava/util/ArrayList;

    new-instance v1, Lcom/adobe/premiereclip/looks/ClipLook;

    const-string/jumbo v2, "31"

    const-string/jumbo v3, "Bright"

    const v4, 0x7f0201ed

    const v5, 0x7f090004

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/adobe/premiereclip/looks/ClipLook;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    const/4 v0, 0x1

    sput-boolean v0, Lcom/adobe/premiereclip/looks/LocalLooks;->isInit:Z

    .line 72
    :cond_0
    return-void
.end method

.method public static size()I
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/adobe/premiereclip/looks/LocalLooks;->looksList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
