.class final enum Lcom/adobe/premiereclip/TourViewActivity$TOURVIEWPAGES;
.super Ljava/lang/Enum;
.source "TourViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/premiereclip/TourViewActivity$TOURVIEWPAGES;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/premiereclip/TourViewActivity$TOURVIEWPAGES;

.field public static final enum PAGE_COUNT:Lcom/adobe/premiereclip/TourViewActivity$TOURVIEWPAGES;

.field public static final enum PAGE_MAIN:Lcom/adobe/premiereclip/TourViewActivity$TOURVIEWPAGES;

.field public static final enum PAGE_PREMIEREPRO:Lcom/adobe/premiereclip/TourViewActivity$TOURVIEWPAGES;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 70
    new-instance v0, Lcom/adobe/premiereclip/TourViewActivity$TOURVIEWPAGES;

    const-string/jumbo v1, "PAGE_MAIN"

    invoke-direct {v0, v1, v2}, Lcom/adobe/premiereclip/TourViewActivity$TOURVIEWPAGES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/premiereclip/TourViewActivity$TOURVIEWPAGES;->PAGE_MAIN:Lcom/adobe/premiereclip/TourViewActivity$TOURVIEWPAGES;

    new-instance v0, Lcom/adobe/premiereclip/TourViewActivity$TOURVIEWPAGES;

    const-string/jumbo v1, "PAGE_PREMIEREPRO"

    invoke-direct {v0, v1, v3}, Lcom/adobe/premiereclip/TourViewActivity$TOURVIEWPAGES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/premiereclip/TourViewActivity$TOURVIEWPAGES;->PAGE_PREMIEREPRO:Lcom/adobe/premiereclip/TourViewActivity$TOURVIEWPAGES;

    new-instance v0, Lcom/adobe/premiereclip/TourViewActivity$TOURVIEWPAGES;

    const-string/jumbo v1, "PAGE_COUNT"

    invoke-direct {v0, v1, v4}, Lcom/adobe/premiereclip/TourViewActivity$TOURVIEWPAGES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/premiereclip/TourViewActivity$TOURVIEWPAGES;->PAGE_COUNT:Lcom/adobe/premiereclip/TourViewActivity$TOURVIEWPAGES;

    .line 69
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/adobe/premiereclip/TourViewActivity$TOURVIEWPAGES;

    sget-object v1, Lcom/adobe/premiereclip/TourViewActivity$TOURVIEWPAGES;->PAGE_MAIN:Lcom/adobe/premiereclip/TourViewActivity$TOURVIEWPAGES;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adobe/premiereclip/TourViewActivity$TOURVIEWPAGES;->PAGE_PREMIEREPRO:Lcom/adobe/premiereclip/TourViewActivity$TOURVIEWPAGES;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adobe/premiereclip/TourViewActivity$TOURVIEWPAGES;->PAGE_COUNT:Lcom/adobe/premiereclip/TourViewActivity$TOURVIEWPAGES;

    aput-object v1, v0, v4

    sput-object v0, Lcom/adobe/premiereclip/TourViewActivity$TOURVIEWPAGES;->$VALUES:[Lcom/adobe/premiereclip/TourViewActivity$TOURVIEWPAGES;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/premiereclip/TourViewActivity$TOURVIEWPAGES;
    .locals 1

    .prologue
    .line 69
    const-class v0, Lcom/adobe/premiereclip/TourViewActivity$TOURVIEWPAGES;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/TourViewActivity$TOURVIEWPAGES;

    return-object v0
.end method

.method public static values()[Lcom/adobe/premiereclip/TourViewActivity$TOURVIEWPAGES;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/adobe/premiereclip/TourViewActivity$TOURVIEWPAGES;->$VALUES:[Lcom/adobe/premiereclip/TourViewActivity$TOURVIEWPAGES;

    invoke-virtual {v0}, [Lcom/adobe/premiereclip/TourViewActivity$TOURVIEWPAGES;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/premiereclip/TourViewActivity$TOURVIEWPAGES;

    return-object v0
.end method
