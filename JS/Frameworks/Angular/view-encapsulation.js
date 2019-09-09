// Override view encapsulation to enable custom styles (blockchain-state-wrapper):
// <div class="wrapper wrapper-content pl-1 pr-1 mt-2 blockchain-state-wrapper">

/**
 * Block Chain State Component.
 */
@Component({
    templateUrl: './blockchain-state.html',
    styleUrls: ['./blockchain-state.scss'],
    encapsulation: ViewEncapsulation.None,
})