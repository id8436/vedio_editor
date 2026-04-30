.class public Lcom/adobe/creativesdk/foundation/internal/utils/UIEventsUtil;
.super Ljava/lang/Object;
.source "UIEventsUtil.java"


# instance fields
.field private final _eventType:Lcom/adobe/creativesdk/foundation/internal/utils/UIEventsUtil$Type;

.field public isVisible:I


# direct methods
.method public constructor <init>(Lcom/adobe/creativesdk/foundation/internal/utils/UIEventsUtil$Type;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/utils/UIEventsUtil;->_eventType:Lcom/adobe/creativesdk/foundation/internal/utils/UIEventsUtil$Type;

    .line 28
    return-void
.end method


# virtual methods
.method public getEventType()Lcom/adobe/creativesdk/foundation/internal/utils/UIEventsUtil$Type;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/utils/UIEventsUtil;->_eventType:Lcom/adobe/creativesdk/foundation/internal/utils/UIEventsUtil$Type;

    return-object v0
.end method
