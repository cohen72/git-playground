const assets = ['ios/ColuConsumerRn/Info.plist', 'ios/ColuConsumerRn.xcodeproj/project.pbxproj', 'docs/CHANGELOG.md', 'android/app/build.gradle', 'package.json'];
const message = 'chore(release): ${nextRelease.version} \n\n${nextRelease.notes}';

const branches = ['+([0-9])?(.{+([0-9]),x}).x', 'master', 'next', { name: 'develop', prerelease: 'qa' }, { name: 'release', prerelease: 'rc' }];
const verifyConditions = [['@semantic-release/changelog'], ['@semantic-release/git', { assets, message }]];
const analyzeCommits = ['@semantic-release/commit-analyzer'];
const generateNotes = ['@semantic-release/release-notes-generator'];

const prepare = [
	'@semantic-release/changelog',
	['@semantic-release/npm', { npmPublish: false }],
	['@semantic-release/git', { assets: ['package.json', 'CHANGELOG.md'], message: 'chore(release): ${nextRelease.version} [skip ci]\n\n${nextRelease.notes}' }],
];

const publish = [['@semantic-release/github', { successComment: false, failComment: false }]];

// skipped steps
const verifyRelease = [];
const fail = [];
const success = [];
const addChannel = [];

module.exports = {
	branches,
	analyzeCommits,
	verifyConditions,
	verifyRelease,
	generateNotes,
	prepare,
	publish,
	fail,
	success,
	addChannel,
};
