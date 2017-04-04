// =============================================================================
// JS
// =============================================================================
app.controller('GameCardController', function ($scope, $rootScope) {

});

// =============================================================================
// HTML
// =============================================================================
app.component("gameCard", {
    template: `
        <a href="/recommendations/{{$ctrl.game.uid}}"
            class="prerender-wait"
            ng-click="$ctrl.showGame({game: $ctrl.game})">

            <div class="ui card clickable">

                <!-- IMAGE -->
                <div class="game-card-image">
                    <img class="ui image" ng-src="{{$ctrl.game.imageFullPath}}" alt="{{$ctrl.game.name}}"
                        fallback-src="/app/assets/img/default.png"/>
                </div>

                <!-- NAME -->
                <div class="content">
                    <h2 class="ui small header game-card-header">{{$ctrl.index}}. {{$ctrl.game.name}}</h2>
                    <time datetime="{{$ctrl.game.releaseYears[0].name}}" ng-if="$ctrl.game.releaseYears">{{$ctrl.game.releaseYears[0].name}}</time>
                    <div ng-if="!$ctrl.game.releaseYears">-</div>
                </div>
            </div>
        </a>
    `,
    controller: "GameCardController",
    bindings: {
        index: "@",
        game: "=",
        showGame: "&"
    }
});
