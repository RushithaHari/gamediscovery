// =============================================================================
// HTML
// =============================================================================
app.component("gameDetails", {
    templateUrl: 'game-details.html',
    bindings: {
        index: "=",
        game: "=",
        gameLinks: "="
    }
});