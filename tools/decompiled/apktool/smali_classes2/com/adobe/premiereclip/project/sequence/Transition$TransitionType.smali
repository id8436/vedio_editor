.class public final enum Lcom/adobe/premiereclip/project/sequence/Transition$TransitionType;
.super Ljava/lang/Enum;
.source "Transition.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/premiereclip/project/sequence/Transition$TransitionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/premiereclip/project/sequence/Transition$TransitionType;

.field public static final enum CROSS_FADE:Lcom/adobe/premiereclip/project/sequence/Transition$TransitionType;

.field public static final enum FADE_IN:Lcom/adobe/premiereclip/project/sequence/Transition$TransitionType;

.field public static final enum FADE_OUT:Lcom/adobe/premiereclip/project/sequence/Transition$TransitionType;

.field public static final enum NULL:Lcom/adobe/premiereclip/project/sequence/Transition$TransitionType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/adobe/premiereclip/project/sequence/Transition$TransitionType;

    const-string/jumbo v1, "NULL"

    invoke-direct {v0, v1, v2}, Lcom/adobe/premiereclip/project/sequence/Transition$TransitionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/premiereclip/project/sequence/Transition$TransitionType;->NULL:Lcom/adobe/premiereclip/project/sequence/Transition$TransitionType;

    new-instance v0, Lcom/adobe/premiereclip/project/sequence/Transition$TransitionType;

    const-string/jumbo v1, "FADE_IN"

    invoke-direct {v0, v1, v3}, Lcom/adobe/premiereclip/project/sequence/Transition$TransitionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/premiereclip/project/sequence/Transition$TransitionType;->FADE_IN:Lcom/adobe/premiereclip/project/sequence/Transition$TransitionType;

    new-instance v0, Lcom/adobe/premiereclip/project/sequence/Transition$TransitionType;

    const-string/jumbo v1, "FADE_OUT"

    invoke-direct {v0, v1, v4}, Lcom/adobe/premiereclip/project/sequence/Transition$TransitionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/premiereclip/project/sequence/Transition$TransitionType;->FADE_OUT:Lcom/adobe/premiereclip/project/sequence/Transition$TransitionType;

    new-instance v0, Lcom/adobe/premiereclip/project/sequence/Transition$TransitionType;

    const-string/jumbo v1, "CROSS_FADE"

    invoke-direct {v0, v1, v5}, Lcom/adobe/premiereclip/project/sequence/Transition$TransitionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/premiereclip/project/sequence/Transition$TransitionType;->CROSS_FADE:Lcom/adobe/premiereclip/project/sequence/Transition$TransitionType;

    .line 24
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/adobe/premiereclip/project/sequence/Transition$TransitionType;

    sget-object v1, Lcom/adobe/premiereclip/project/sequence/Transition$TransitionType;->NULL:Lcom/adobe/premiereclip/project/sequence/Transition$TransitionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adobe/premiereclip/project/sequence/Transition$TransitionType;->FADE_IN:Lcom/adobe/premiereclip/project/sequence/Transition$TransitionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adobe/premiereclip/project/sequence/Transition$TransitionType;->FADE_OUT:Lcom/adobe/premiereclip/project/sequence/Transition$TransitionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/adobe/premiereclip/project/sequence/Transition$TransitionType;->CROSS_FADE:Lcom/adobe/premiereclip/project/sequence/Transition$TransitionType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/adobe/premiereclip/project/sequence/Transition$TransitionType;->$VALUES:[Lcom/adobe/premiereclip/project/sequence/Transition$TransitionType;

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
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/premiereclip/project/sequence/Transition$TransitionType;
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/adobe/premiereclip/project/sequence/Transition$TransitionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/project/sequence/Transition$TransitionType;

    return-object v0
.end method

.method public static values()[Lcom/adobe/premiereclip/project/sequence/Transition$TransitionType;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/adobe/premiereclip/project/sequence/Transition$TransitionType;->$VALUES:[Lcom/adobe/premiereclip/project/sequence/Transition$TransitionType;

    invoke-virtual {v0}, [Lcom/adobe/premiereclip/project/sequence/Transition$TransitionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/premiereclip/project/sequence/Transition$TransitionType;

    return-object v0
.end method
