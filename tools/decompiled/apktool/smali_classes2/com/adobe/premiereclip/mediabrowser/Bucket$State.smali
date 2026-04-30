.class public final enum Lcom/adobe/premiereclip/mediabrowser/Bucket$State;
.super Ljava/lang/Enum;
.source "Bucket.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/premiereclip/mediabrowser/Bucket$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/premiereclip/mediabrowser/Bucket$State;

.field public static final enum COLLAPSED:Lcom/adobe/premiereclip/mediabrowser/Bucket$State;

.field public static final enum EXPANDED:Lcom/adobe/premiereclip/mediabrowser/Bucket$State;

.field public static final enum LOADING:Lcom/adobe/premiereclip/mediabrowser/Bucket$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/adobe/premiereclip/mediabrowser/Bucket$State;

    const-string/jumbo v1, "EXPANDED"

    invoke-direct {v0, v1, v2}, Lcom/adobe/premiereclip/mediabrowser/Bucket$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/premiereclip/mediabrowser/Bucket$State;->EXPANDED:Lcom/adobe/premiereclip/mediabrowser/Bucket$State;

    new-instance v0, Lcom/adobe/premiereclip/mediabrowser/Bucket$State;

    const-string/jumbo v1, "COLLAPSED"

    invoke-direct {v0, v1, v3}, Lcom/adobe/premiereclip/mediabrowser/Bucket$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/premiereclip/mediabrowser/Bucket$State;->COLLAPSED:Lcom/adobe/premiereclip/mediabrowser/Bucket$State;

    new-instance v0, Lcom/adobe/premiereclip/mediabrowser/Bucket$State;

    const-string/jumbo v1, "LOADING"

    invoke-direct {v0, v1, v4}, Lcom/adobe/premiereclip/mediabrowser/Bucket$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/premiereclip/mediabrowser/Bucket$State;->LOADING:Lcom/adobe/premiereclip/mediabrowser/Bucket$State;

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/adobe/premiereclip/mediabrowser/Bucket$State;

    sget-object v1, Lcom/adobe/premiereclip/mediabrowser/Bucket$State;->EXPANDED:Lcom/adobe/premiereclip/mediabrowser/Bucket$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adobe/premiereclip/mediabrowser/Bucket$State;->COLLAPSED:Lcom/adobe/premiereclip/mediabrowser/Bucket$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adobe/premiereclip/mediabrowser/Bucket$State;->LOADING:Lcom/adobe/premiereclip/mediabrowser/Bucket$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/adobe/premiereclip/mediabrowser/Bucket$State;->$VALUES:[Lcom/adobe/premiereclip/mediabrowser/Bucket$State;

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
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/premiereclip/mediabrowser/Bucket$State;
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/adobe/premiereclip/mediabrowser/Bucket$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/mediabrowser/Bucket$State;

    return-object v0
.end method

.method public static values()[Lcom/adobe/premiereclip/mediabrowser/Bucket$State;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/adobe/premiereclip/mediabrowser/Bucket$State;->$VALUES:[Lcom/adobe/premiereclip/mediabrowser/Bucket$State;

    invoke-virtual {v0}, [Lcom/adobe/premiereclip/mediabrowser/Bucket$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/premiereclip/mediabrowser/Bucket$State;

    return-object v0
.end method
