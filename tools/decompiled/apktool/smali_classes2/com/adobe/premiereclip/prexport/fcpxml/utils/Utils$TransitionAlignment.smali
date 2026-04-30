.class public final enum Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$TransitionAlignment;
.super Ljava/lang/Enum;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$TransitionAlignment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$TransitionAlignment;

.field public static final enum center:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$TransitionAlignment;

.field public static final enum end:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$TransitionAlignment;

.field public static final enum start:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$TransitionAlignment;


# instance fields
.field private numVal:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 101
    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$TransitionAlignment;

    const-string/jumbo v1, "start"

    invoke-direct {v0, v1, v2, v2}, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$TransitionAlignment;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$TransitionAlignment;->start:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$TransitionAlignment;

    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$TransitionAlignment;

    const-string/jumbo v1, "center"

    invoke-direct {v0, v1, v3, v3}, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$TransitionAlignment;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$TransitionAlignment;->center:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$TransitionAlignment;

    new-instance v0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$TransitionAlignment;

    const-string/jumbo v1, "end"

    invoke-direct {v0, v1, v4, v4}, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$TransitionAlignment;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$TransitionAlignment;->end:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$TransitionAlignment;

    .line 100
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$TransitionAlignment;

    sget-object v1, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$TransitionAlignment;->start:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$TransitionAlignment;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$TransitionAlignment;->center:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$TransitionAlignment;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$TransitionAlignment;->end:Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$TransitionAlignment;

    aput-object v1, v0, v4

    sput-object v0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$TransitionAlignment;->$VALUES:[Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$TransitionAlignment;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 106
    iput p3, p0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$TransitionAlignment;->numVal:I

    .line 107
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$TransitionAlignment;
    .locals 1

    .prologue
    .line 100
    const-class v0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$TransitionAlignment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$TransitionAlignment;

    return-object v0
.end method

.method public static values()[Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$TransitionAlignment;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$TransitionAlignment;->$VALUES:[Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$TransitionAlignment;

    invoke-virtual {v0}, [Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$TransitionAlignment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$TransitionAlignment;

    return-object v0
.end method


# virtual methods
.method public getNumVal()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/adobe/premiereclip/prexport/fcpxml/utils/Utils$TransitionAlignment;->numVal:I

    return v0
.end method
